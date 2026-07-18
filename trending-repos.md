# Trending Repos (Week of Jul 18, 2026)

Scraped from GitHub Trending (all / Python / Rust / Go / TypeScript, weekly). Each entry enriched with current stars, open issues, primary language, last push. Use this as a live signal layer on top of `repo-tiers.md` (which is the curated steady-state portfolio).

**Scope:** Architect fits you can *contribute* to (active, open issues, manageable competition), not just repos that are hot. A repo with 90k stars and 2 open issues is launch traffic, not a contribution target.

---

## Tier 1 — High-fit contribution targets (active, open issue surface, your edge applies)

| Repo | Stars | Open issues | Lang | Last push | Why it fits |
|------|-------|-------------|------|-----------|-------------|
| **openai/codex** | 99,278 | 9,782 | Rust | 2026-07-18 | The terminal coding agent. Rust + agent infra — overlaps your skills. Huge open issue surface = low competition per ticket if you filter. Directly names OpenCode as a supported tool. |
| **ai-dynamo/dynamo** | 7,522 | 209 | Rust | 2026-07-18 | Datacenter-scale distributed LLM inference serving framework. vLLM-adjacent (covers your "vLLM second play" thesis at lower competition). Rust + distributed systems = senior infra signal. |
| **memvid/memvid** | 15,984 | 9 | Rust | 2026-07-14 | Single-file RAG-free memory layer for AI agents. **Direct competitor to Memori** — study their design + write the missing features they're not building, or contribute interop. |
| **tirth8205/code-review-graph** | 19,950 | 70 | Python | 2026-07-18 | Local-first code intelligence graph exposed via MCP + CLI. Reinforces "persistent memory/context for agents" narrative — natural place to contribute + cross-link Memori. |
| **Gentleman-Programming/engram** | 5,540 | 99 | Go | 2026-07-08 | Persistent memory MCP server for AI coding agents, Go + SQLite + FTS5. **Direct competitor to Memori** again. Read their issue tracker for gaps; stronger than staring at Memori's own. |
| **rowboatlabs/rowboat** | 16,614 | 67 | TS | 2026-07-17 | Open-source AI coworker *with memory*. Memory-of-agents overlap; TS keeps the codebase approachable. |
| **moeru-ai/airi** | 42,818 | 91 | TS | 2026-07-18 | Self-hosted AI companion framework. Active, mid-sized issue surface, MCP/agent infra overlap. |
| **browseros-ai/BrowserOS** | 12,296 | 35 | TS | 2026-07-18 | Open-source agentic browser. Small issue backlog, partner TS agent infra — clean entry for TS-capable contributors. |
| **Anthropic cwc-workshops** | 1,676 | 1 | TS | 2026-06-26 | Anthropic's own workshop repo. Tiny issue count and prestige proximity — contribute via PRs that improve workshop examples. |

## Tier 2 — Ecosystem satellites (Claude / agent skill wave — high signal, low merge bar)

| Repo | Stars | Open issues | Lang | Last push | Why |
|------|-------|-------------|------|-----------|-----|
| **mattpocock/skills** | 176,107 | 187 | Shell | 2026-07-17 | Agent-skills registry hot this week. Skills are text/contract work — low code bar, fast merge. |
| **Nutlope/hallmark** | 12,542 | 9 | CSS | 2026-06-26 | Anti-AI-slop design skill. Tiny backlog, design-skill overlap with the ecosystem wave. |
| **ibelick/ui-skills** | 4,692 | 2 | TS | 2026-07-17 | Skills for design engineers. Same skill wave. |
| **google-labs-code/stitch-skills** | 7,656 | 9 | TS | 2026-07-13 | Stitch MCP server skills library. Google-blessed skill format — early spec clarity wins. |
| **Graphify-Labs/graphify** | 90,594 | 235 | Python | 2026-07-18 | Coding-assistant skill turning folders into skills. Big backlog, aggressive growth. |
| **davila7/claude-code-templates** | 29,696 | 83 | Python | 2026-07-18 | CLI for configuring/monitoring Claude Code. Active maintenance + open issues. |
| **wonderwhy-er/DesktopCommanderMCP** | 8,474 | 130 | TS | 2026-07-18 | Popular MCP server (terminal/file control). Tier-1 candidate per `pr-target-repos.md` MCP strategy. |
| **github/spec-kit** | 122,058 | 179 | Python | 2026-07-17 | Spec-driven dev toolkit. Heavy momentum, real backlog — GitHub-maintained, hireable signal. |
| **HKUDS/nanobot** | 45,843 | 258 | Python | 2026-07-18 | Lightweight open-source agent framework from HKUDS (also DeepTutor/Vibe-Trading authors). Big backlog. |
| **Shubhamsaboo/awesome-llm-apps** | 123,806 | 2 | Python | 2026-07-18 | Mostly curated apps; ~0 open issues. Skip for contributing — useful for inspiration only. |

## Tier 3 — Inference / orchestration (the vLLM-alternative lane)

| Repo | Stars | Open issues | Lang | Last push | Why |
|------|-------|-------------|------|-----------|-----|
| **ai-dynamo/dynamo** | 7,522 | 209 | Rust | 2026-07-18 | (See Tier 1.) |
| **QuantumNous/new-api** | 42,615 | 613 | Go | 2026-07-18 | Unified AI model hub / aggregation gateway. Big backlog, Go, prod-style — infra credibility. |
| **PrefectHQ/prefect** | 23,416 | 784 | Python | 2026-07-18 | Workflow orchestration. Mature, real issue backlog, Python engineer credibility. |
| **PostHog/posthog** | 36,367 | 3,086 | Python | 2026-07-18 | Product analytics platform. Huge backlog — almost too much, but matplotlib/Pandas PR skill moves. |

## Tier 4 — Trending but wrong fit (watch, don't chase now)

| Repo | Stars | Open issues | Lang | Why skip |
|------|-------|-------------|------|----------|
| **OpenCut-app/OpenCut** | 75,215 | 247 | TS | Video editing — not on-strategy. Big name only. |
| **HKUDS/Vibe-Trading** | 24,824 | 29 | Python | Trading bot; academic group hot hand. Outside your narrative. |
| **HKUDS/DeepTutor** | 27,563 | 39 | Python | Tutoring — not on-strategy. |
| **iOfficeAI/OfficeCLI** | 19,083 | 31 | C# | Office automation; C# stack mismatch. |
| **stablyai/orca** | 21,471 | 730 | TS | Parallel agent fleet ADE. Cool but broad scope; revisit if you commit to fleet-infra lane. |
| **virattt/ai-hedge-fund** | 62,232 | 49 | Python | Trading, low open-issue count. |
| **Graphify-Labs/graphify** | 90,594 | 235 | Python | (Listed Tier 2 too — only chase if you pivot to the skills wave.) |
| **Zackriya-Solutions/meetily** | 25,371 | 199 | Rust | Meeting transcription; off-strategy. |
| **TencentCloud/CubeSandbox** | 918 stars/wk | — | Rust | Sandbox infra — narrow, watch. |

## Solid infra (already on `repo-tiers.md` but trending confirms heat)

| Repo | Stars | Open issues | Lang | Last push | Note |
|------|-------|-------------|------|-----------|------|
| **astral-sh/uv** | 87,615 | 2,358 | Rust | Jul 18 | Still rocketing. Already on Tier B of `repo-tiers.md`. |
| **astral-sh/ruff** | 48,661 | 1,687 | Rust | Jul 18 | Same. |
| **ollama/ollama** | 176k | n/a | Go | Jul 18 | Local inference giant. |
| **helix-editor/helix** | n/a | n/a | Rust | — | Editor; trend confirms Rust editor momentum. |

---

## Recommended additions to the active portfolio

Fold these into the existing strategy without disrupting the SigmaHQ-first plan:

1. **Read memvid + engram issue trackers today** (both ~10-100 open issues, both competitors to Memori). Free intel — tells you what users ask for that Memori should ship.
2. **One PR to `ai-dynamo/dynamo` within 30 days.** It's the vLLM-thesis at 1/10th the competition, in Rust, with a real backlog. Bigger signal-per-PR than vLLM.
3. **One skill-PR this week** to `mattpocock/skills`, `Nutlope/hallmark`, or `google-labs-code/stitch-skills`. Skills are text/contract work and the wave is peaking right now — early contributors get name-attached. Counts toward the "100 merged PRs" criterion.
4. **One MCP server PR** to `wonderwhy-er/DesktopCommanderMCP` — small backlog, fast-moving, directly Claude-adjacent (matches `pr-target-repos.md` MCP Tier 1).
5. **Watch `github/spec-kit`** — spec-driven dev tooling is rising fast (`github/spec-kit` + `Graphify-Labs/graphify` + `mattpocock/skills` all converging on "agent skills / specs"). Contribute once you've picked a skill-PR lane.

## What NOT to chase from this list

- **Trading/fintech repos** (Vibe-Trading, ai-hedge-fund, QuantumNous/new-api-fin) — orthogonal to the AI-infra hire narrative.
- **Video/media repos** (OpenCut) — distracts from the security+infra story.
- **Anything HKUDS** right now — they publish fast, but their repos trend on academic novelty notoriety rather than maintainer need; contribution ROI is low.

## Update cadence

Re-run the scraper every 2 weeks to detect rising repos *before* they hit 50k stars (post-50k the contribution bar goes up). Filter rule: 1k–50k stars, >20 open issues, last push <7 days.

---

Source: GitHub Trending (weekly), fetched 2026-07-18 via webfetch. Enrichment via `gh repo view`. Raw extraction dropped nav boilerplate (owner/repo regex on saved pages).