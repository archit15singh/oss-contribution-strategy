# SigmaHQ: `setupugc.exe` Proxy-Execution Detection

**Status:** PR [#6152](https://github.com/SigmaHQ/sigma/pull/6152) open  
**Owner:** Archit  
**Priority:** do this before vLLM work  
**Proposed PR scope:** one Windows process-creation rule only

## Why this is the current target

The original SigmaHQ issue queue was rechecked live on 2026-07-18. The previously suggested quick wins are poor first-PR targets:

| Item | Live state | Decision |
|---|---|---|
| SigmaHQ #6057 (ADSI local-user creation) | Open PR #6064 exists; no update since 2026-06-13 | Do not duplicate |
| SigmaHQ #6117 (OpenSSH forwarding) | Draft PR #6144 exists | Do not duplicate |
| SigmaHQ #6132 (uncommon-port testing) | Original reporter said they will produce a solution | Do not duplicate |
| SigmaHQ #6067 (certificate-store FP) | Contributor analysis found no evidence that the proposed application writes the certificate store | Do not pursue |
| SigmaHQ #6077 (browser-cache smuggling) | Reporter supplied a complete rule and Atomic tests but has not opened a PR | Do not appropriate the reporter's work; ask before contributing only if needed |

`setupugc.exe` is a newer, independently sourced LOLBAS proxy-execution technique that has no matching Sigma rule. It is narrow, testable, and aligned with detection-engineering experience.

## Detection thesis

`setupugc.exe` is a signed Windows deployment binary. On Windows 10/11 and Windows Server 2025, an administrator can configure a command under:

```text
HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\UnattendSettings\
  Setup-Unattend-Settings\RunSynchronous\<n>\Path
```

Then `setupugc.exe specialize` or `setupugc.exe auditUser` causes the configured command to run. The LOLBAS detection guidance specifically calls out `setupugc.exe` spawning children outside normal Windows Setup context; normal parents are `setuphost.exe` and `setup.exe`.

### Proposed rule behavior

Detect `setupugc.exe` invoked with either proxy-execution switch, excluding the normal Windows Setup parents:

```yaml
selection_image:
    - Image|endswith: '\setupugc.exe'
    - OriginalFileName: 'SetupUGC.exe'
selection_command:
    CommandLine|contains:
        - ' specialize'
        - ' auditUser'
filter_main_setup:
    ParentImage|endswith:
        - '\setup.exe'
        - '\setuphost.exe'
condition: all of selection_* and not filter_main_setup
```

Before committing, confirm the `OriginalFileName` casing from the binary or omit it. The detection must work from `Image` + `CommandLine` alone.

### Proposed metadata

```yaml
title: Suspicious Proxy Execution Via SetupUGC
id: 5868223f-f84e-4a20-91b8-b3289daab2cc
status: experimental
description: Detects potential proxy execution via setupugc.exe, a Windows deployment binary, outside of normal Windows Setup context.
references:
    - https://lolbas-project.github.io/lolbas/Binaries/Setupugc/
author: Archit Singh
date: 2026-07-18
tags:
    - attack.stealth
    - attack.t1218
logsource:
    category: process_creation
    product: windows
falsepositives:
    - Windows deployment or setup operations that use setupugc.exe outside of the expected parent process tree
level: high
```

Do not add a registry rule in this PR. It is a useful follow-up only after the process rule is accepted.

## Evidence and duplicate checks

- LOLBAS entry added 2026-04-20: [`setupugc.exe`](https://github.com/LOLBAS-Project/LOLBAS/blob/master/yml/OSBinaries/setupugc.yml)
- LOLBAS describes both supported execution modes: `specialize` and `auditUser`.
- Current Sigma clone had no matches for `setupugc`, `unattendsettings`, `runsynchronous`, or `setup-unattend`.
- SigmaHQ conventions require duplicate checks and validation with `tests/test_logsource.py` and `tests/test_rules.py`.
- Similar Sigma style references:
  - `rules/windows/process_creation/proc_creation_win_lolbin_mavinject_process_injection.yml`
  - `rules/windows/process_creation/proc_creation_win_lolbin_ie4uinit.yml`

## Convention triage (2026-07-18)

| Convention | Finding | Outcome |
|---|---|---|
| [Filename](https://github.com/SigmaHQ/sigma-specification/blob/main/sigmahq/sigmahq-filename-convention.md) | `proc_creation_win_setupugc_proxy_execution.yml` matches the required `proc_creation_win_*` pattern for the Windows `process_creation` category. | Pass |
| [Rule](https://github.com/SigmaHQ/sigma-specification/blob/main/sigmahq/sigmahq-rule-convention.md) | Required fields are present; 4-space indentation, public reference, `experimental` status, clear `Detects` description, `filter_main_*` naming, and concrete false-positive guidance conform. | Pass |
| [Title](https://github.com/SigmaHQ/sigma-specification/blob/main/sigmahq/sigmahq-title-convention.md) | Original title used `Potential` at `high` level. The title guide reserves `Potential` for `medium`; `high` rules should use `Suspicious`. | Fixed: `Suspicious Proxy Execution Via SetupUGC` |

## Maintainer-style PR review (2026-07-18)

**Verdict: ready for maintainer review; no blocking code findings.**

### What was reviewed

| Area | Result | Evidence |
|---|---|---|
| Scope | Pass | Exactly one new, 29-line process-creation rule; no unrelated edits. |
| Base branch | Pass | Branch merged cleanly against current `upstream/master` (`bc433784e`) at review time. |
| Duplicate coverage | Pass | Repository search found no existing coverage for `setupugc`, `UnattendSettings`, `Setup-Unattend`, or `RunSynchronous`. |
| Detection logic | Pass | Requires both `setupugc.exe` and one documented proxy-execution mode (`specialize` or `auditUser`), then excludes the two normal Setup parents specified by LOLBAS (`setup.exe`, `setuphost.exe`). |
| Rule metadata | Pass | UUID, experimental status, description, public reference, ATT&CK tag, logsource, false-positive guidance, and severity are present and convention-aligned. |
| GitHub review state | Pass | No inline review threads or requested changes. The only review is the automated first-time-contributor welcome message. |
| Local validation | Pass | Targeted Sigma CLI validation: 0 errors, 0 condition errors, 0 issues; `tests/test_logsource.py`: 3 tests passed; diff whitespace check passed. |
| Upstream Actions | Informational | `gh pr checks` reported no checks on the feature branch at review time. Do not claim an upstream CI run until GitHub reports it. |

### Residual risk / likely maintainer question

No Windows EVTX or Atomic Red Team fixture was available locally. The rule has been structurally validated, but it has **not** been executed against real Sysmon Event ID 1 data. If a maintainer asks for telemetry evidence, produce two sanitized events:

1. **Expected detection:** `Image` ending in `\\setupugc.exe`, `CommandLine` containing ` specialize` or ` auditUser`, and a non-Setup parent such as `cmd.exe` or `powershell.exe`.
2. **Expected exclusion:** the same image/mode with `ParentImage` ending in `\\setup.exe` or `\\setuphost.exe`.

This is not a merge blocker under the current contribution guide because regression tests are optional, but it is the clearest next evidence to add if review requests it.

### Repeat the PR review

```bash
SIGMA_REPO=/Users/architsingh/projects/sigma

git -C "$SIGMA_REPO" fetch upstream master
git -C "$SIGMA_REPO" switch new/setupugc-proxy-execution
git -C "$SIGMA_REPO" diff --check upstream/master...HEAD
git -C "$SIGMA_REPO" diff --find-renames --stat upstream/master...HEAD
git -C "$SIGMA_REPO" diff --find-renames upstream/master...HEAD

rg -n -i 'setupugc|unattendsettings|setup-unattend|runsynchronous' \
  "$SIGMA_REPO/rules" \
  "$SIGMA_REPO/rules-emerging-threats" \
  "$SIGMA_REPO/rules-threat-hunting" \
  "$SIGMA_REPO/rules-compliance" || true

/private/tmp/sigmahq-ci-venv/bin/sigma check --fail-on-error --fail-on-issues \
  --validation-config "$SIGMA_REPO/tests/sigma_cli_conf.yml" \
  "$SIGMA_REPO/rules/windows/process_creation/proc_creation_win_setupugc_proxy_execution.yml"
/private/tmp/sigmahq-ci-venv/bin/python "$SIGMA_REPO/tests/test_logsource.py"

gh pr view 6152 -R SigmaHQ/sigma --json state,mergeable,reviewDecision,url
gh pr checks 6152 -R SigmaHQ/sigma || true
```

## Copy-pasteable commands

### Local development environment (mirrors upstream CI)

The reusable verifier is [`execution/scripts/verify-sigmahq-pr.sh`](scripts/verify-sigmahq-pr.sh). It creates an isolated Python 3.11 environment at `/private/tmp/sigmahq-ci-venv`, installs the same validator plugin line as the upstream workflow, and runs all five CI gates.

```bash
cd /Users/architsingh/projects/oss-contribution-strategy
execution/scripts/verify-sigmahq-pr.sh /Users/architsingh/projects/sigma
```

Equivalent manual setup and verification commands:

```bash
cd /Users/architsingh/projects/sigma
python3.11 -m venv /private/tmp/sigmahq-ci-venv
/private/tmp/sigmahq-ci-venv/bin/pip install --upgrade pip
/private/tmp/sigmahq-ci-venv/bin/pip install \
  PyYAML colorama yamllint pysigma sigma-cli \
  'pySigma-validators-sigmahq==0.20.*'

yamllint --strict .
/private/tmp/sigmahq-ci-venv/bin/python tests/test_logsource.py
/private/tmp/sigmahq-ci-venv/bin/python tests/test_rules.py
/private/tmp/sigmahq-ci-venv/bin/sigma check --fail-on-error --fail-on-issues \
  --validation-config tests/sigma_cli_conf.yml \
  rules*
grep -rh '^id: ' rules* deprecated unsupported | sort | uniq -c | grep -vE '^\s+1 id: '
```

Completed on 2026-07-18 against commit `28a22d96f`: strict YAML lint passed; the log-source suite passed (3 tests); legacy rule tests passed; full Sigma validation returned 0 errors, 0 condition errors, and 0 issues; and no duplicate IDs were found.

### Resume research / verify that the gap remains

```bash
WORKTREE=/private/tmp/sigma-upstream
git -C "$WORKTREE" pull --ff-only
rg -n -i 'setupugc|unattendsettings|runsynchronous|setup-unattend' "$WORKTREE/rules" || true
gh issue list -R SigmaHQ/sigma --state open --search setupugc --json number,title,url
gh pr list -R SigmaHQ/sigma --state open --search setupugc --json number,title,url
```

### Prepare a fork and branch

```bash
cd ~/projects
gh repo fork SigmaHQ/sigma --clone --remote
cd sigma
git switch -c new/setupugc-proxy-execution
```

### Inspect closest examples before drafting

```bash
sed -n '1,220p' rules/windows/process_creation/proc_creation_win_lolbin_mavinject_process_injection.yml
sed -n '1,220p' rules/windows/process_creation/proc_creation_win_lolbin_ie4uinit.yml
```

### Required validation

```bash
python tests/test_logsource.py
python tests/test_rules.py
sigma check --fail-on-error --fail-on-issues \
  --validation-config tests/sigma_cli_conf.yml \
  rules/ rules-emerging-threats/ rules-threat-hunting/ rules-compliance/
```

If the `sigma` CLI is absent, run the two Python checks and state that in the PR.

### Commit and PR

```bash
git add rules/windows/process_creation/proc_creation_win_setupugc_proxy_execution.yml
git commit -m "new: detect potential proxy execution via setupugc"
git push -u origin new/setupugc-proxy-execution
gh pr create -R SigmaHQ/sigma \
  --title "new: detect potential proxy execution via setupugc" \
  --body "## Summary
Adds a process-creation rule for potential proxy execution via \`setupugc.exe\` using the \`specialize\` or \`auditUser\` modes outside the normal Windows Setup parent process tree.

## Validation
- \`python tests/test_logsource.py\`
- \`python tests/test_rules.py\`

References LOLBAS documentation for the technique."
```

## Decision log

- 2026-07-18: Chose an original Sigma detection instead of a stale, already-claimed, or reporter-authored issue solution.
- 2026-07-18: Kept scope to a single process-creation rule; defer the registry configuration detection to a follow-up.
- 2026-07-18: Do not begin vLLM until this PR is open and validated.

## Next action

Monitor [PR #6152](https://github.com/SigmaHQ/sigma/pull/6152) and respond to CI or maintainer feedback within 24 hours. Do not start a second SigmaHQ PR until the review outcome is clear.

## Implementation record

Append only. Include: branch name, rule path, test output summary, PR URL, reviewer feedback, and every revision made.

- 2026-07-18: Created fork `archit15singh/sigma` and branch `new/setupugc-proxy-execution`.
- 2026-07-18: Added `rules/windows/process_creation/proc_creation_win_setupugc_proxy_execution.yml`.
- 2026-07-18: `python3 tests/test_logsource.py` passed in `/private/tmp/sigma-validation-venv` (Python 3.14 with `PyYAML` and `colorama`).
- 2026-07-18: Installed the same validation plugin line used by SigmaHQ CI: `pySigma-validators-sigmahq==0.20.*`. The first validator run reported zero errors/condition errors and one convention issue: a new rule cannot begin with `status: test`. Corrected the status to `experimental`; re-run required before commit.
- 2026-07-18: Re-ran the CI-equivalent target check after the correction: 0 errors, 0 condition errors, and 0 issues. Re-ran `tests/test_logsource.py`: 3 tests passed.
- 2026-07-18: Committed `636fae564` (`new: detect potential proxy execution via setupugc`), pushed branch `new/setupugc-proxy-execution`, and opened [SigmaHQ/sigma PR #6152](https://github.com/SigmaHQ/sigma/pull/6152).
- 2026-07-18: Inspected [review #4728508302](https://github.com/SigmaHQ/sigma/pull/6152#pullrequestreview-4728508302). It is the automated first-time-contributor welcome message only; no review threads, inline comments, or requested changes exist. No PR update or reply is needed.
- 2026-07-18: Opened [issue #6153](https://github.com/SigmaHQ/sigma/issues/6153) to document the `setupugc.exe` detection gap. Expanded [PR #6152](https://github.com/SigmaHQ/sigma/pull/6152)'s description with `Closes #6153`, the threat model, rule scope, exact local-validation commands/results, and GitHub-check status.
- 2026-07-18: Triaged the SigmaHQ filename, rule, and title conventions. Updated the rule title from `Potential Proxy Execution Via SetupUGC` to `Suspicious Proxy Execution Via SetupUGC` because the rule's `high` level requires the `Suspicious` indicator. Revalidated cleanly and pushed commit `28a22d96f`.
- 2026-07-18: Added `execution/scripts/verify-sigmahq-pr.sh`, which reproduces all current SigmaHQ CI gates locally with Python 3.11. Ran the full verifier successfully against the PR branch and added the exact commands and results to PR #6152.
- 2026-07-18: Completed an independent maintainer-style review of PR #6152. No blocking code findings; updated this record with the full review matrix, repeatable review commands, and the only remaining evidence gap (real Windows/Sysmon telemetry).
