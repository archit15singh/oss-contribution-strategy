# 30-Day Execution Plan (Start: Jul 18 2026)

Phased, acceptance-criteria-driven. Updated against live repo state on Jul 18 2026 (SigmaHQ issues re-verified open, Memori local repo confirmed present, Codex-for-OSS form URLs checked).

**North-star metric for Day 30:** ≥3 merged PRs to SigmaHQ, ≥1 merged PR to an AI-infra repo (dynamo or vLLM), Memori MCP server shipped + posted to 3 communities, Codex for OSS + $25K fund applications submitted.

---

## State snapshot (Jul 18 2026)

| Item | Status | Source |
|------|--------|--------|
| Claude for OSS app | Submitted (Memori) | `claude-oss-application-draft.md` |
| Codex for OSS app | **NOT SUBMITTED** | form: https://openai.com/form/codex-for-oss/ |
| Codex Open Source Fund ($25K) | **NOT SUBMITTED** | form: https://openai.com/form/codex-open-source-fund/ |
| Memori repo | Local `~/projects/memori`, 25★, last push today | `gh repo view archit15singh/memori` |
| Memori MCP server | **NOT SHIPPED** | Week 1 action in `claude-oss-application-draft.md` |
| Memori on PyPI / crates.io | **NOT SHIPPED** | Week 1 action in `claude-oss-application-draft.md` |
| SigmaHQ PR #1 | **NOT STARTED** | — |
| SigmaHQ issues still open | #6132 #6117 #6077 #6067 #6058 #6057 #6056 #5590 | `gh issue list -R SigmaHQ/sigma` |
| SigmaHQ merge velocity | last 16 PRs merged Jul 1 – Jul 16; 1-3 day cadence from individual contributors | `gh pr list -R SigmaHQ/sigma --state merged` |

---

## Week 1 (Days 1-7) — First PR + applications + MCP server

### Deliverables
- [ ] Codex for OSS application submitted (https://openai.com/form/codex-for-oss/)
- [ ] Codex Open Source Fund ($25K) application submitted (https://openai.com/form/codex-open-source-fund/)
- [ ] SigmaHQ PR #1 opened, referencing one of #6132 / #6058 / #6067
- [ ] Memori MCP server scaffold (cargo crate + README + smoke test) pushed to `archit15singh/memori`

### Opening move detail — SigmaHQ PR #1
Pick the freshest feasible issue (priority order):
1. **#6132 — Rule modification: Testing Usage of Uncommonly Used Port** (Jul 13, freshest)
2. **#6058 — FP report: Simple-Help.com** (Jun 9, FP-fix = fastest review cycle)
3. **#6067 — FP on Windows cert store addition** (Jun 16, FP-fix)

Style template (matched to recent merged PRs):
- Title prefix `fix:` or `update:` exactly as `#6131`, `#6116`, `#6114` use.
- One rule, one PR. No drive-by edits.
- Add test under `tests/` matching the existing test style (see `SigmaHQ/sigma` CI rules in their CONTRIBUTING).

### Commands
```bash
# Fork + clone
gh repo fork SigmaHQ/sigma --clone --remote
cd sigma

# Read contribution guide
glow CONTRIBUTING.md  # or: bat CONTRIBUTING.md

# Pick issue (e.g. 6058 — FP on Simple-Help.com)
gh issue view 6058 -R SigmaHQ/sigma
gh issue view 6058 -R SigmaHQ/sigma --comments

# Branch
git checkout -b fix/simple-help-fp-6058

# Make the rule change (see sigma/rules/... for paths)
# Run sigma tests
make test   # or: poetry run pytest tests/

# Commit + push + PR
git commit -am "fix: exclude Simple-Help.com legitimate process from net_connection_win_powershell_network_connection"
git push -u origin fix/simple-help-fp-6058
gh pr create -R SigmaHQ/sigma --fill --body "Closes #6058. Adds filter for legitimate Simple-Help.com binary..."
```

### Acceptance criteria — Week 1
- One PR opened on SigmaHQ (linked issue in body, rule + test included).
- Both Codex applications submitted (screenshot or confirmation email kept in `applications/`).
- Memori MCP server: `cargo build` passes, README has install snippet, pushed to a branch on `archit15singh/memori`.

---

## Week 2 (Days 8-14) — SigmaHQ PR #2 + skill wave PR

### Deliverable state going in
- SigmaHQ PR #1 should be under review; if maintainer asks for tweaks, drop everything and respond within 24h.

### Deliverables
- [ ] SigmaHQ PR #2 opened (different issue category than PR #1 — vary the muscle)
- [ ] One skill-wave PR merged or opened to `mattpocock/skills`, `Nutlope/hallmark`, or `google-labs-code/stitch-skills`
- [ ] Daily: comment on 1-2 SigmaHQ issue threads to be visible (e.g. ask clarifying questions on #6057 or #6117)

### Issue rotation for PR #2
- If PR #1 was an FP fix, this one is a **rule modification** (e.g. #6132 uncommon-port test) or **coverage gap** (#6057 ADSI/WinNT local-user creation).
- If PR #1 was a rule mod, this one is an FP fix.

### Skill wave PR (parallel lane)
Goal: counts toward Claude for OSS "100+ merged PRs" criterion while a SigmaHQ PR sits in review.
```bash
# Pick one — skill repos have the lowest merge bar right now
gh repo fork mattpocock/skills --clone --remote
# Read template, add a unit-tested skill or improve an existing one
gh pr create -R mattpocock/skills --fill --body "Adds <skill-name> skill for <task>. Tested against Claude Code v6.x."
```
**Time-box:** 2 hours. If the skill repo's contribution guide is unclear after 30 min, switch to `Nutlope/hallmark` (CSS skill — even simpler).

### Acceptance criteria — Week 2
- SigmaHQ PR #2 opened.
- Skill-wave PR opened (merge not required this week).
- ≥5 issue comments on SigmaHQ threads (visible participation).

---

## Week 3 (Days 15-21) — SigmaHQ PR #3 + Memori MCP server ship + first community post

### Deliverables
- [ ] SigmaHQ PR #3 opened
- [ ] Memori MCP server tagged v0.1.0 on `archit15singh/memori`, README has install snippet
- [ ] Memori MCP server posted to r/ClaudeCode (lowest-volume, highest-target-user community per `communities-to-post.md` Tier 1)

### SigmaHQ PR #3 — depth move
After two FP/rule-mod PRs, the third should demonstrate domain range:
- **#6117 — Linux/OpenSSH sshd DEBUG logs for SSH TCP forwarding channel activity** (new rule proposal, network security — fits your Abnormal detection-engineering background)
- **#6077 — Browser Cache Smuggling Payload Extraction** (new rule proposal, browser security)
- **#5151 — LDAP Nightmare CVE-2024-49112** (CVE-specific, dated but evergreen if you can validate)

### Memori MCP server ship
```bash
cd ~/projects/memori
# Verify build
cargo build --release
cargo test

# Tag + push
git tag v0.1.0
git push origin v0.1.0

# Publish to crates.io (need cargo login first if not done)
cargo publish --dry-run
cargo publish
```

### Community post — r/ClaudeCode
- Write problem-first post, not announcement: "Claude Code forgets X between sessions. Built an MCP server that solves it locally."
- Link to repo + crates.io page.
- Single post, no spam. Engage in comments for 24h.

### Acceptance criteria — Week 3
- SigmaHQ PR #3 opened.
- Memori MCP server v0.1.0 tag on GitHub + published to crates.io.
- r/ClaudeCode post live, ≥10 upvotes or ≥3 substantive comments.

---

## Week 4 (Days 22-30) — SigmaHQ PR #4-5 + AI-infra PR + Memori launch

### Deliverables
- [ ] SigmaHQ PR #4 opened
- [ ] **Decision point:** first PR to **ai-dynamo/dynamo** (recommended — Rust distributed inference, 209 open issues) OR **vllm-project/vllm** (86k★, 5.8k issues, higher competition). See `discovered-repos.md` Tier 3.
- [ ] Memori post to Hacker News + r/LocalLLaMA per `communities-to-post.md`

### SigmaHQ PR #4-5
- After 3 PRs merged, you have maintainer name-recognition. Go for either:
  - A new rule proposal grounded in a recent TTP (`#6117` if not yet taken, or your own original proposal based on ATT&CK updates)
  - A coverage-gap fix (`#6057` ADSI/WinNT local-account creation)

### AI-infra PR selection process (`ai-dynamo/dynamo` recommended)
```bash
gh repo fork ai-dynamo/dynamo --clone --remote
cd dynamo
# Look for unlabelled, low-comment issues (per AGENTS.md gotcha — avoid crowded "good first issues")
gh issue list -R ai-dynamo/dynamo --state open --limit 50 --json number,title,labels,comments --jq '.[] | select(.comments | length == 0 or .comments < 3) | "#\(.number) [\([.labels[].name] | join(","))] \(.title[0:90])"' | head -20
```
Pick the issue with the fewest existing comments and a Python-or-Rust-shaped fix.

### HN launch (only if MCP server shipped in Week 3 + benchmarks in README)
- Title template: "Memori: Local-first persistent memory for AI coding agents (SQLite + FTS5 + vectors, single file)"
- Tuesday or Wednesday morning PT (HN frontpage algorithm). Avoid weekends.

### Acceptance criteria — Week 4 + Day 30
- SigmaHQ PR #4 opened; ≥3 SigmaHQ PRs merged.
- First AI-infra PR opened (dynamo or vllm).
- HN post live; r/LocalLLaMA post live.
- **Day-30 north-star:** check all four bullets at the top of this file.

---

## Rolling cadence after Day 30

- **Re-run trending scrape** every 2 weeks (recipe in `discovered-repos.md` and `trending-repos.md`) — append Wave 2/3 sections.
- **vLLM entry:** once SigmaHQ reputation established (≥4 merged PRs), pick an unlabelled vLLM Python bug — your SigmaHQ presence offsets "no prior infra PRs".
- **MCP ecosystem depth:** continue one MCP-server / skill PR per week toward the Claude for OSS "100+ merged PRs" criterion.

## Triggers to re-plan (stop and update this file)

- SigmaHQ PR #1 not reviewed within 14 days → reach out in issue thread, pick a different issue in parallel.
- A SigmaHQ PR rejected → respond to feedback, do NOT stack a second SigmaHQ PR until #1 merges.
- Memori MCP server ship slips past Week 3 → deprioritise Week 4 AI-infra PR; ship Memori first.
- New competing memory tool enters `discovered-repos.md` Wave 2 (e.g. a fresh memvid/engram fork) → read its issue tracker and audit Memori's roadmap.

## Verify checkpoints (run these to confirm state)

```bash
# SigmaHQ PRs you've opened or had merged
gh search prs --author=@me --repo SigmaHQ/sigma --state merged --json number,title,mergedAt
gh search prs --author=@me --repo SigmaHQ/sigma --state open --json number,title,createdAt

# Memori state
gh repo view archit15singh/memori --json stargazerCount,pushedAt,latestRelease --jq '.latestRelease.tagName, .stargazerCount, .pushedAt'

# Applications submitted (keep confirmations)
ls applications/  # screenshots / emails
```