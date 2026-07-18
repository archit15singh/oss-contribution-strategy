# PR Target Repos for 100 Merged PRs

Goal: minimum effort → maximum accepted PRs towards Anthropic's "100+ merged PRs to repos you don't own in the last 12 months" criterion.

## Strategy

Don't chase Kubernetes, Rust, CPython. Target repos where:
- Maintainers are active and review fast
- Lots of docs/examples/tests needed
- AI ecosystem relevance is high
- Your existing expertise applies

Accepted PR count matters more than PR size. Typo fixes, docs fixes, missing examples, broken links, README improvements, tutorial additions, test improvements, issue reproductions — all count.

Target: 1 merged PR/day → 100 in ~3 months.

---

## Tier 1 — Best ROI (directly Claude/agent adjacent)

| Repo | Why | Easy entry points |
|------|-----|-------------------|
| **MCP Servers** (github.com/modelcontextprotocol) | Anthropic ecosystem, hundreds of servers, many maintained by 1-2 people | docs, examples, testing |
| **MCP Specification** | Contribute to the standard itself | spec clarifications, examples |
| **OpenHands** | Huge agent project, constant bug reports, lots of docs | examples, evals, docs, integrations |
| **OpenAI Agents SDK** | Industry standard for agents | examples, docs, integrations |
| **PydanticAI** | Growing fast, contributor friendly | docs, examples |

## Tier 2 — Very Good (AI infrastructure)

| Repo | Why | Easy entry points |
|------|-----|-------------------|
| **Qdrant** | Vector search — your expertise area | docs fixes, integration examples |
| **LangChain** | Ecosystem visibility, endless issues | docs, integrations, bug reproductions |
| **LlamaIndex** | RAG expertise overlap | examples, integrations, docs |
| **CrewAI** | Multi-agent popularity | docs, examples, tutorials |
| **Continue.dev** | IDE agent — memory integration potential | docs, integrations |

## Tier 3 — Easy Merge Factories (not pure AI but count toward 100)

| Repo | Why |
|------|-----|
| **FastAPI** | You already know it. Docs, examples, tests |
| **Typer** | CLI tooling. Docs/examples |
| **Rich** | Terminal formatting. Docs/examples |
| **HTTPX** | Python HTTP. Docs |

---

## Recommended 3-Repo Focus

Don't spread across 20. Pick 3:

1. **MCP ecosystem** — directly Claude-adjacent, reinforces Memori story
2. **OpenHands** — coding agents, your domain
3. **Qdrant** — vector search, your expertise

These reinforce your positioning as someone building infrastructure for AI coding agents, not just a PR counter.

---

## Integration Strategy (Higher ROI than random PRs)

Build "Memori Integrations" for each target project:
- Memori + MCP server
- Memori + OpenHands
- Memori + OpenAI Agents SDK
- Memori + Continue
- Memori + Aider

This:
- Gets PRs merged into each project
- Exposes Memori to each community
- Creates real users
- Reinforces your niche: memory infrastructure for AI coding agents
