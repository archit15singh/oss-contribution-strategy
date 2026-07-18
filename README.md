# OSS Contribution Strategy

Maximise resume ROI for senior backend/AI engineer role (target: OpenAI, Anthropic, Databricks, Cursor).

## Thesis

1. **Depth > breadth** — 1-2 projects deeply > surface-level PRs across 6
2. **Asymmetric advantage > popularity** — pick repos where your background makes you uniquely valuable
3. **Avoid crowded "good first issues"** — they're flooded with AI-generated PRs and 10+ volunteers

## The Plan

| Phase | Project | Goal | Timeline |
|-------|---------|------|----------|
| 1 | **SigmaHQ** | 3-5 merged PRs | Days 1-30 |
| 2 | **vLLM** | 1 meaningful PR | Days 30-90 |
| 3 | Re-evaluate | Deepen or pivot | Day 90+ |

## Why SigmaHQ first

- Detection engineering from Abnormal AI is a **unique advantage** — most contributors can't write good rules
- Issue tracker is full of fresh, actionable items (rule proposals, FP reports, coverage gaps)
- Fast merge velocity (PRs merged daily)
- Build a narrative: "authored production Sigma rules" → directly relevant to security/AI infra roles

## Why vLLM second

- Hottest LLM serving project (86.6k stars)
- High signal for AI infrastructure roles
- But: extreme competition (3.8k open PRs, 2k open issues)
- Strategy: pick unlabelled bugs, not crowded "good first issues" where you're 1 of 10

## Rejected

- **Qdrant** — good-first-issues are stale/blocked/taken. Requires deep Rust. Low leverage.
- **OpenTelemetry** — 6-year-old issues with spec baggage. Low merge velocity.
- **LangChain** — no entry points. Extreme competition.
- **FastAPI** — mature project, no good first issues, single maintainer.
- **Kubernetes/Kafka/Redis** — Tier S prestige but months before any contribution. Poor ROI.

## Files

| File | Contents |
|------|----------|
| `AGENTS.md` | Full context, strategy, commands for agents |
| `ecosystem-programs.md` | Free AI access programs ranked by resume + credit value |
| `repo-tiers.md` | All OSS repos tiered by career ROI and fit |
| `communities-to-post.md` | Where to post Memori and OSS work (Hacker News, Reddit, etc.) |
| `pr-target-repos.md` | PR target repos for 100 merged PRs + integration strategy |
| `claude-oss-application-draft.md` | Drafted application text + post-submission actions |
| `issues/sigmahq-analysis.md` | Each SigmaHQ issue broken down, actionable |
| `issues/vllm-analysis.md` | Which vLLM issues are worth chasing |
| `issues/qdrant-analysis.md` | Qdrant — why skip (stale/blocked/taken) |
| `issues/opentelemetry-analysis.md` | OpenTelemetry — why skip (6yr old issues) |
| `issues/meta-analysis.md` | Cross-project comparison + narrative framework |
| `trending-repos.md` | Weekly snapshot of GitHub trending repos with contribution-fit verdicts |
| `discovered-repos.md` | Topic-search wave (80+ queries) → fit-filtered contribution-candidate ledger |
