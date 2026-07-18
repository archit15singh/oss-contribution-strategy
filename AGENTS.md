# OSS Contribution Strategy

## Context

Senior backend/AI engineer. Background at Abnormal AI (detection engineering, security). Targeting roles at OpenAI, Anthropic, Databricks, Cursor (or any top-tier AI infrastructure company). Goal: maximize resume ROI from open source contributions.

## Core Strategy

- **Primary: SigmaHQ** — asymmetric advantage from detection engineering experience. Fastest path to meaningful merged PRs. Build reputation first.
- **Secondary: vLLM** — long-term play for AI infrastructure credibility. Pick unlabelled bugs, not crowded "good first issues".
- **Drop:** Qdrant, OpenTelemetry, LangChain, FastAPI (too crowded, too slow, or no edge)

## Key Insight

Depth over breadth. 1-2 projects done deeply > surface-level PRs across 6.

## Maintainer landscape (Jul 2026)

- Low-quality AI-generated PRs overwhelming maintainers
- High-value: well-tested fixes, thoughtful design discussions, long-term maintenance
- Source: ft.com (vibe-coding cleanup article), Times of India (GH India report)

---

## Priority Queue

### SigmaHQ

**Why:** Detection engineering asymmetric advantage. Issues are fresh (rule proposals, FP reports). Fast merge velocity. No competition from AI-generated PRs (requires domain knowledge).

**Entry points:**
- Rule proposals from open issues
- False positive reports from open issues
- Coverage gaps (new exploits, TTPs)

**Goal:** 3-5 merged PRs in first 30 days.

### vLLM

**Why:** Hottest LLM serving project. High signal for AI infra roles.

**Entry points:**
- Unlabelled bugs (avoid crowded "good first issues")
- Python-level refactors
- Documentation / testing improvements

**Goal:** 1 meaningful PR in first 60 days.

---

## Repos tracked

| Repo | URL | Status |
|------|-----|--------|
| SigmaHQ/sigma | https://github.com/SigmaHQ/sigma | Active |
| vllm-project/vllm | https://github.com/vllm-project/vllm | Watch |
| qdrant/qdrant | https://github.com/qdrant/qdrant | Cold |
| open-telemetry/opentelemetry-python | https://github.com/open-telemetry/opentelemetry-python | Cold |

## Commands

```bash
# Check SigmaHQ open issues
gh issue list -R SigmaHQ/sigma --limit 20 --json number,title,createdAt,labels,url

# Check SigmaHQ recent merged PRs
gh pr list -R SigmaHQ/sigma --state merged --limit 10 --json number,title,mergedAt,author

# Check vLLM open issues (unlabelled)
gh issue list -R vllm-project/vllm --limit 30 --json number,title,labels,createdAt

# Check vLLM help wanted (not good first issue — less crowded)
gh issue list -R vllm-project/vllm --label "help wanted" -L 10 --json number,title,createdAt,comments
```

## Gotchas

- SigmaHQ issues are mostly rule proposals and FP reports — domain work, not code
- vLLM "good first issues" are instantly flooded with volunteers (10+ per ticket)
- Qdrant good-first-issues are stale/blocked or taken
- OpenTelemetry "good first issues" are years old with spec baggage
- Microsoft Founders Hub no longer gives direct OpenAI credits (discontinued mid-2025) — only Azure OpenAI Service
- OpenAI Codex for Open Source program exists alongside Claude for Open Source — apply to both
- Codex Open Source Fund ($25K API credits) is a SEPARATE application from Codex for OSS (ChatGPT Pro)
- Databricks for Startups relaunched June 2026 — consolidated into one program, now includes Neon (Postgres)
- Do NOT use utm_source query params when linking to repos
