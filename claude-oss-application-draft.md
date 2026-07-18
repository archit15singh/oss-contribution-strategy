# Claude for Open Source — Application Draft

**Status:** Application submitted with `archit15singh/memori`

## Two Text Fields on the Form

### Tell us about the project's reach and impact

> Memori is an open-source persistent memory layer for AI coding agents. While modern coding agents can reason effectively within a session, they typically lose debugging knowledge, architectural decisions, workflow preferences, and project context between sessions. Memori addresses this gap by providing a local-first memory system that allows agents to accumulate and retrieve knowledge across long-running projects.
>
> The project focuses on a capability I believe is foundational for the next generation of AI agents: long-term memory. It combines hybrid search, semantic retrieval, automatic deduplication, and lightweight deployment into a single-file solution that developers can integrate into agent workflows without external services or cloud dependencies.
>
> Memori is being developed as open-source infrastructure for the emerging ecosystem of coding agents and agentic development tools, helping move agents from session-based assistants toward systems that can continuously learn from prior work.

### How will you use the subscription for your project?

> I will use Claude Max to actively develop and evaluate memory-driven workflows for AI coding agents using Memori. The project was created from a real limitation I encountered while using coding agents extensively: valuable knowledge is lost between sessions. Access to Claude Max will allow me to iterate on integrations, retrieval strategies, memory evaluation, developer experience, and documentation while dogfooding the project in real-world development workflows. My goal is to continue improving open-source infrastructure that helps AI coding agents become more effective over time rather than starting from zero in every session.

### Other Info (optional)

> I am a software engineer working on AI systems, agentic workflows, retrieval systems, and developer tooling. Memori was created from a real problem I encountered while using AI coding agents extensively: valuable context and lessons learned are often lost between sessions.
>
> I believe long-term memory will become a foundational capability for future AI agents, similar to how retrieval became a foundational capability for modern AI applications. Memori is my contribution toward making that capability accessible as open-source infrastructure.
>
> I plan to continue maintaining and expanding the project, improving integrations with AI coding workflows, and sharing learnings with the broader developer community as the agent ecosystem evolves.

---

## After Submitting: The Waiting Game

While waiting for Anthropic's response, focus on making Memori a stronger application for round 2 (if rejected) or making the most of the subscription (if accepted).

### Week 1 Actions
- [ ] Build **Memori MCP Server** (first-class MCP integration = directly relevant to Claude Code)
- [ ] Publish to **PyPI** (`pip install memori`)
- [ ] Publish to **crates.io** (`cargo install memori`)
- [ ] Write technical blog post using existing benchmark data

### Week 2 Actions
- [ ] Post Memori MCP Server to Claude Code communities
- [ ] Hacker News launch
- [ ] r/ClaudeAI, r/LocalLLaMA posts

### Week 3+ Actions
- [ ] Start accumulating merged PRs in MCP ecosystem, OpenHands, Qdrant
- [ ] Build integrations: Memori + MCP, Memori + OpenHands, Memori + OpenAI Agents SDK
