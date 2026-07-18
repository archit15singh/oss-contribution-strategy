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
title: Potential Proxy Execution Via SetupUGC
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

## Copy-pasteable commands

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
