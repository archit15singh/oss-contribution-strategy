# Execution Log

This directory is the durable working record for active OSS contribution work.

Each dated entry records:

- the opportunity investigated and the decision made;
- source links and duplicate checks;
- exact, copy-pasteable commands;
- implementation and validation status; and
- the next concrete action.

Start future sessions with the newest dated entry, then run its `Resume commands` section. Do not re-open work marked `Do not pursue` unless the recorded external state has changed.

Use [`scripts/verify-sigmahq-pr.sh`](scripts/verify-sigmahq-pr.sh) to run SigmaHQ's current CI gates locally against a clone. It deliberately uses Python 3.11, matching the upstream workflow.

See [Local Contribution Checkouts](checkouts.md) for the separation between active PR worktrees and clean upstream tracking clones.

## Active work

| Date | Track | Status | Next action |
|---|---|---|---|
| 2026-07-18 | SigmaHQ / `setupugc.exe` proxy execution detection | PR [#6152](https://github.com/SigmaHQ/sigma/pull/6152) open; local review complete | Monitor upstream checks and maintainer feedback; if asked, add sanitized Windows process-creation evidence |
