# Free AI Access Programs for Power Users

## The Landscape

AI companies are creating "contributor grants", "ecosystem programs", and "startup credits" to attract power users, OSS maintainers, researchers, and developers. This doc groups them by resume value + credit value.

---

## Quadrant 1: Massive Resume Value + Massive Free Credits

| Program | Free Value | Resume Signal | How to get it |
|---------|-----------|---------------|---------------|
| **Claude for Open Source** | ~$1,200-1,500 (6mo Max 20x) | High | Apply with open-source project. Catch-all: "maintain something the ecosystem depends on, apply anyway" |
| **Codex for Open Source** (OpenAI) | ~$1,200 (6mo ChatGPT Pro) + up to $25K API credits | Very High | Apply as OSS maintainer. $1M fund, 1k+ stars preferred but catch-all exists. **Apply with Memori** |
| **OpenAI Researcher Access** | Hundreds-thousands API credits | Very High | Research proposal. API credits for academic work |
| **NVIDIA Inception** | Very High (GPU credits) | High | Apply as AI startup. Free GPU credits, engineering support |
| **Microsoft Founders Hub** | $5k-$150k+ Azure + Azure OpenAI credits | High | Apply as founder. NOTE: direct OpenAI credits discontinued mid-2025; now gives Azure OpenAI Service credits |
| **AWS Activate** | $1k-$100k+ | High | Apply as startup |
| **Databricks for Startups** | Up to $200k (Databricks + Neon) | High | Apply as venture-backed startup. Relaunched June 2026. Single consolidated program |
| **Y Combinator-backed credits** | Extremely High | Extremely High | Get into YC |
| **AI Grant** | High | Extremely High | Apply as founder building AI |

## Quadrant 2: High Resume Value, Moderate Credits

| Program | Resume Signal |
|---------|---------------|
| **GitHub Star** | Very High — recognized by GitHub as impactful OSS contributor globally |
| **Google Developer Expert (GDE)** | Very High — Google-recognized expert in a technical domain |
| **Microsoft MVP** | Very High — exceptional community + technical leadership |
| **Hugging Face Ambassador** | High — community leader in open-source AI |
| **OpenAI Red Team** | High — trusted external evaluator |
| **Anthropic Safety Evaluator** | High — model behavior assessment |

## Quadrant 3: Moderate Resume Value, Huge Credits

| Program | Credit Potential |
|---------|-----------------|
| **Google Cloud for Startups** | $100k-$350k GCP + Gemini credits |
| **AWS Activate** | $100k+ |
| **Azure Founders Hub** | $150k+ |
| **Databricks for Startups** | Up to $200k (Databricks + Neon Postgres). Venture-backed only |
| **Modal for Startups** | Thousands in GPU credits. Seed-Series A. VC-dependent |
| **RunPod Startup Program** | GPU compute credits + discounts. Seed-Series A |
| **Together AI Accelerator** | Up to $50K inference credits. Build ($15K), Grow ($30K), Scale ($50K) tiers |
| **Oracle for Startups** | Large |
| **IBM for Startups** | Large |

## Quadrant 4: Low Resume Value, Good Practical Value

| Program | Use |
|---------|-----|
| **OpenAI Grove** | 5-week in-person SF program. Up to $50K API credits. Highly selective |
| **Codex Open Source Fund** | $25K API credits for OSS maintainers using Codex CLI. Apply separately from Codex for OSS |
| Hackathons (OpenAI Build Week, Anthropic Hackathons, etc.) | Networking, prizes |
| **Groq free tier** | ~30 req/min, ~1000 req/day on Llama 3.3 70B. No credit card |
| **Together AI credits** | $25-$50 signup credits + startup accelerator |
| **Fireworks credits** | Useful |
| **OpenRouter credits** | Multi-model access |
| **Google Gemini free tier** | ~1,500 req/day on Gemini Flash. 1M token context |
| **Cloudflare Workers AI** | 10k neurons/day free inference |
| **Cerebras free tier** | ~1M tokens/day. No credit card |
| **DeepInfra** | Free inference |
| **SambaNova** | Free inference |
| **Nebius AI Studio** | Free inference |
| **Lambda Research Grants** | Up to $5K GPU cloud credits for researchers publishing AI work |
| **NSF ACCESS** | Free supercomputer time (GPU clusters). Explore tier: 1-page abstract, approved in days. No PI status needed |
| **DOE INCITE** | Exascale computing (Frontier, Aurora). 500k-1M node-hours. Researchers worldwide eligible |
| **Modal free tier** | Recurring monthly GPU allotment (low tens of dollars) |
| **RunPod referral bonus** | $5-$500 (realistically $5-10). Random weighted |

## Top 8 Programs for Career ROI

1. **Claude for Open Source** — easiest near-term win. Already applied.
2. **Codex for Open Source** — also apply. 6mo ChatGPT Pro + $25K API credits possible
3. **Microsoft Founders Hub** — easy credits ($5k-$150k+)
4. **NVIDIA Inception** — strong startup signal + GPU credits
5. **Databricks for Startups** — up to $200k. Venture-backed required
6. **GitHub Star** — long-term prestige
7. **Google Developer Expert** — career accelerator
8. **OpenAI Researcher Access** — research credibility

---

## Application Strategy for Claude for Open Source

### Current position against requirements:
- Maintainers/library authors: 500+ dependents — NOT CLOSE, ignore
- Core contributors (CPython, Rust, K8s, etc.) — NOT REALISTIC, ignore
- **Active contributors: 100+ merged PRs to repos you don't own** — MOST ACHIEVABLE
- Community builders: 20+ unique external contributors — VERY DIFFICULT, ignore
- Critical infrastructure: OpenSSF >= 0.4 — possible but indirect
- **Catch-all: "maintain something the ecosystem quietly depends on, apply anyway"** — THIS IS YOUR PLAY

### Best application angle for Memori:
Lead with **problem, why it matters, why open source, why AI ecosystem needs it**. Not with numbers (25 stars won't compete with Kubernetes maintainers).

### What to write in the application:
**"Tell us about the project's reach and impact"**
Focus on: persistent memory for AI coding agents, aligns with Claude Code's roadmap, fills a gap in the agent ecosystem. Don't lead with GitHub stars.

**"How will you use the subscription for your project?"**
Say: "To develop and evaluate memory-driven workflows for AI coding agents using Memori. To iterate on integrations, retrieval strategies, and dogfood the project in real-world development." NOT "I want free Claude."

## Also Apply: Codex for Open Source (OpenAI)

OpenAI has a parallel program offering **6 months ChatGPT Pro + Codex** + up to **$25K API credits** via the Codex Open Source Fund. Requirements: 1k+ GitHub stars preferred, but catch-all: "if your project plays an important role in the ecosystem, apply anyway."

**Apply with Memori.** The application is shorter than Anthropic's. They explicitly name-drop OpenCode, Cline, and other coding agent tools — Memori is directly relevant here too.

**Application link:** https://openai.com/form/codex-for-oss/
**Codex Open Source Fund (separate, $25K):** https://openai.com/form/codex-open-source-fund/

Also note: OpenAI explicitly lists **OpenCode** (the tool you use) as a supported coding tool. Mention that.

### While waiting for applications:
- Build **Memori MCP Server** (first-class MCP integration = directly relevant to both Claude Code and Codex)
- Publish to **PyPI** and **crates.io**
- Write a **technical blog post** (use existing benchmark data)
- **Start accumulating merged PRs** in external AI repos

---

## Other Notable Programs

### Researcher Programs
- OpenAI Researcher Access Program
- Cohere for AI
- Google Research programs

### Student/Education Programs
- GitHub Student Developer Pack (historically highest ROI)
- Google AI Student Programs
- Azure for Students
- JetBrains

### Ambassador/Champion Programs
- Hugging Face Ambassador
- Google Developer Expert
- Microsoft MVP
- GitHub Star
- AWS Community Builder

### Bug Bounties / Safety
- OpenAI Red Team
- Anthropic Safety
- AI evaluations / model testing
