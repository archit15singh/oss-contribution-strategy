# SigmaHQ Issue Analysis

**Repo:** SigmaHQ/sigma
**Stars:** 10.8k
**Forks:** 2.7k
**Open issues:** 12 (small — very manageable)
**Last merged PR:** 2026-07-16 (active)

## Verdict

**Best immediate opportunity.** Your Abnormal AI detection engineering background gives you asymmetric advantage. Most volunteers can write code but can't write good detection rules. You can.

Issue tracker is small and focused: rule proposals, false positive reports, coverage gaps. No competition from AI-generated PRs (LLMs can't write good Sigma rules reliably).

## Open Issues (as of Jul 2026)

### #6132 — [Rule modification] Testing Usage of Uncommonly Used Port
- Fresh (Jul 13, 2026)
- Rule quality improvement
- Quick win

### #6117 — Rule idea: Linux/OpenSSH sshd DEBUG logs for SSH TCP forwarding channel activity
- Fresh (Jul 8, 2026)
- New rule proposal
- Requires SSH/network knowledge — your wheelhouse

### #6077 — [Rule Proposal] Potential Browser Cache Smuggling Payload Extraction
- Fresh (Jun 23, 2026)
- Browser security — detection engineering

### #6067 — Potential FP on Windows certificate store addition
- FP report — needs validation and filter tweak
- Good for a quick, focused PR

### #6058 — False positive Report on Simple-Help.com
- FP report
- Quick fix

### #6057 — Coverage gap: posh_ps_create_local_user.yml misses local account creation via ADSI/WinNT provider
- Rule improvement — needs Windows AD knowledge
- Coverage gap — valuable contribution

### #6056 — False-Positive: net_connection_win_powershell_network_connection legitimate Azure traffic
- FP + filter improvement
- Cloud security detection

### #5590 — Changelog: add guid's?
- Process improvement
- Low effort

## Recent Merged PRs (for style reference)

- #6141 — Archive New Rule References (automated)
- #6131 — Fix: Remove ver.exe Binary Match Since ver Is a CMD Built-in (human)
- #6125 — update: image_load_side_load_from_non_system_location - add SystemSettings.dll
- #6119 — chore: ci: update outdated discord link
- #6116 — Macos doesn't use passwd shadow system (rule fix)

**Pattern:** PRs are small, focused, single-purpose. One rule addition, one false positive fix. Fast review cycle.

## Workflow

1. Fork the repo
2. Create/modify a rule in the appropriate `rules/` directory
3. Run tests (`make test` or CI)
4. Open PR with reference to the relevant issue
5. Wait for maintainer review (typically within 1-2 days)

## Quickest Path to First PR

Grab an open FP report or rule proposal from the issue tracker, write the fix, submit. Can be done in a day.

## Build Strategy

1. **First 5 PRs:** Mix of FP fixes + rule proposals (builds reputation fast)
2. **Next 5 PRs:** Cover novel TTPs (demonstrates depth)
3. **Ongoing:** Engage in issue discussions (maintainers notice domain expertise)
4. **Stretch:** Propose rule structure improvements or new detection categories
