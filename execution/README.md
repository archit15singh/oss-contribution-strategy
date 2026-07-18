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

## Active work

| Date | Track | Status | Next action |
|---|---|---|---|
| 2026-07-18 | SigmaHQ / `setupugc.exe` proxy execution detection | PR [#6152](https://github.com/SigmaHQ/sigma/pull/6152) open | Monitor CI and maintainer feedback; respond within 24 hours |
