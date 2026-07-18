# Local Contribution Checkouts

This strategy repository stores the durable plan, execution logs, commands, and review notes. Third-party repositories are local nested checkouts with their own Git histories; they are intentionally ignored by this parent repository.

## SigmaHQ — active contribution and follow-on tracking

| Purpose | Location | Remote / branch | State |
|---|---|---|---|
| Active PR worktree | `/Users/architsingh/projects/sigma` | `archit15singh/sigma`, `new/setupugc-proxy-execution` | Owns SigmaHQ PR [#6152](https://github.com/SigmaHQ/sigma/pull/6152) |
| Clean upstream tracking checkout | `/Users/architsingh/projects/oss-contribution-strategy/sigma` | `SigmaHQ/sigma`, `master` | Shallow clone at `bc433784` (2026-07-16) |

Use the active worktree only for review feedback and PR updates. Use the clean upstream tracking checkout to watch `master`, inspect new issues, and prepare the next contribution after PR #6152 reaches a clear outcome.

### Update the clean SigmaHQ tracking checkout

```bash
SIGMA_TRACKING=/Users/architsingh/projects/oss-contribution-strategy/sigma

git -C "$SIGMA_TRACKING" fetch --depth 1 origin master
git -C "$SIGMA_TRACKING" switch master
git -C "$SIGMA_TRACKING" pull --ff-only origin master
git -C "$SIGMA_TRACKING" log -1 --format='%H%n%ad%n%s' --date=short
```

Never run bulk-update commands in `/Users/architsingh/projects/sigma`, which contains the active PR branch.

### Resume after PR #6152

```bash
# Watch PR and review state
gh pr view 6152 -R SigmaHQ/sigma --json state,mergeStateStatus,reviewDecision,url
gh pr checks 6152 -R SigmaHQ/sigma || true

# Refresh the clean checkout when the PR is merged or closed
SIGMA_TRACKING=/Users/architsingh/projects/oss-contribution-strategy/sigma
git -C "$SIGMA_TRACKING" fetch --depth 1 origin master
git -C "$SIGMA_TRACKING" log --oneline -10 origin/master

# Inspect the next unclaimed opportunities
gh issue list -R SigmaHQ/sigma --state open --limit 30 \
  --json number,title,createdAt,labels,comments,url
```

## Elastic — local tracking checkout

`/Users/architsingh/projects/oss-contribution-strategy/elastic-detection-rules` is an existing nested checkout of `elastic/detection-rules`. It is user-owned and may contain work in progress; do not clean, reset, stage, or otherwise modify it from this strategy repository.
