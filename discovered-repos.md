# Discovered Repos — Topic-Search Wave 1 (Jul 18, 2026)

Companion to `trending-repos.md`. Where Trending pulls GitHub's weekly-hot feed, this file is the **topic-search dump**: ~80 topic queries (`mcp`, `agent-memory`, `llm-serving`, `sigma-rule`, `vector-search`, `claude-code`, etc.), deduped, fit-filtered for the OSS contribution strategy, enriched with live stars / open issues / language / last push.

**Wave 1 stats:** 80 topic queries → 469 unique repos → 33 fit-filtered (agent / llm / infra / security / MCP-skill fit, &gt;2k stars, >0 open issues, active in last 30 days).

Use this as a **contribution-candidate ledger**, not a watchlist. Re-run the scraper (script below) monthly; new repos entering the filter set go to a new wave section.

## Agent infra / harness

| Repo | Stars | Open issues | Lang | Last push | Description |
|------|-------|-------------|------|-----------|-------------|
| **NousResearch/hermes-agent** | 216,656 | 7,439 | Python | 2026-07-18 | The agent that grows with you |
| **thedotmack/claude-mem** | 87,703 | 176 | JavaScript | 2026-07-18 | Persistent Context Across Sessions for Every Agent –  Captures everything your agent does during sessions, com |
| **datawhalechina/hello-agents** | 66,999 | 72 | Python | 2026-07-17 | 📚 《从零开始构建智能体》——从零开始的智能体原理与实践教程 |
| **Mintplex-Labs/anything-llm** | 63,479 | 296 | JavaScript | 2026-07-18 | Stop renting your intelligence. Own it with AnythingLLM. Everything you need for a powerful local-first agent  |
| **Panniantong/Agent-Reach** | 57,625 | 70 | Python | 2026-07-17 | Give your AI agent eyes to see the entire internet. Read & search Twitter, Reddit, YouTube, GitHub, Bilibili,  |
| **zhayujie/CowAgent** | 46,035 | 22 | Python | 2026-07-17 | Open-source super AI assistant & Agent Harness. Plans tasks, runs tools and skills, self-evolves with memory a |
| **wshobson/agents** | 38,005 | 2 | Python | 2026-07-17 | Multi-harness agentic plugin marketplace for Claude Code, Codex CLI, Cursor, OpenCode, GitHub Copilot, and Gem |
| **agentscope-ai/QwenPaw** | 23,283 | 611 | Python | 2026-07-17 | Your Personal AI Assistant; easy to install, deploy on your own machine or on the cloud; supports multiple cha |
| **NirDiamant/agents-towards-production** | 21,101 | 6 | Jupyter Notebook | 2026-07-14 | End-to-end, code-first tutorials for building production-grade GenAI agents. From prototype to enterprise depl |

## RAG / memory / vector

| Repo | Stars | Open issues | Lang | Last push | Description |
|------|-------|-------------|------|-----------|-------------|
| **infiniflow/ragflow** | 85,324 | 1,782 | Go | 2026-07-18 | RAGFlow is a leading open-source Retrieval-Augmented Generation (RAG) engine that fuses cutting-edge RAG with  |
| **pathwaycom/llm-app** | 59,029 | 6 | Jupyter Notebook | 2026-07-05 | Ready-to-run cloud templates for RAG, AI pipelines, and enterprise search with live data. 🐳Docker-friendly.⚡Al |
| **HKUDS/LightRAG** | 37,787 | 197 | Python | 2026-07-18 | [EMNLP2025] "LightRAG: Simple and Fast Retrieval-Augmented Generation" |
| **microsoft/graphrag** | 34,494 | 5 | Python | 2026-07-18 | A modular graph-based Retrieval-Augmented Generation (RAG) system |
| **DeusData/codebase-memory-mcp** | 32,563 | 198 | C | 2026-07-18 | High-performance code intelligence MCP server. Indexes codebases into a persistent knowledge graph — average r |
| **dragonflydb/dragonfly** | 30,890 | 238 | C++ | 2026-07-18 | A modern replacement for Redis and Memcached |
| **NirDiamant/RAG_Techniques** | 28,669 | 8 | Jupyter Notebook | 2026-07-14 | This repository showcases various advanced techniques for Retrieval-Augmented Generation (RAG) systems. Each t |
| **supermemoryai/supermemory** | 28,456 | 31 | TypeScript | 2026-07-18 | Memory and context engine + app that is extremely fast, scalable, and can be run fully locally. The Memory API |
| **HKUDS/RAG-Anything** | 22,263 | 99 | Python | 2026-07-09 | "RAG-Anything: All-in-One RAG Framework" |

## Inference / serving

| Repo | Stars | Open issues | Lang | Last push | Description |
|------|-------|-------------|------|-----------|-------------|
| **vllm-project/vllm** | 86,557 | 2,003 | Python | 2026-07-18 | A high-throughput and memory-efficient inference and serving engine for LLMs |

## MCP / skills ecosystem

| Repo | Stars | Open issues | Lang | Last push | Description |
|------|-------|-------------|------|-----------|-------------|
| **nextlevelbuilder/ui-ux-pro-max-skill** | 107,204 | 56 | Python | 2026-07-14 | An AI SKILL that provide design intelligence for building professional UI/UX multiple platforms |
| **addyosmani/agent-skills** | 79,068 | 49 | JavaScript | 2026-07-17 | Production-grade engineering skills for AI coding agents. |
| **shareAI-lab/learn-claude-code** | 71,398 | 35 | Python | 2026-06-26 | Bash is all you need -  A nano claude code–like 「agent harness」, built from 0 to 1 |
| **Leonxlnx/taste-skill** | 64,773 | 23 | JavaScript | 2026-07-18 | Taste-Skill - gives your AI good taste. stops the AI from generating boring, generic slop  |
| **shanraisshan/claude-code-best-practice** | 63,019 | 1 | HTML | 2026-07-18 | from vibe coding to agentic engineering - practice makes claude perfect |
| **mvanhorn/last30days-skill** | 52,595 | 51 | Python | 2026-07-16 | AI agent skill that researches any topic across Reddit, X, YouTube, HN, Polymarket, and the web - then synthes |
| **ChromeDevTools/chrome-devtools-mcp** | 47,129 | 70 | TypeScript | 2026-07-17 | Chrome DevTools for coding agents |
| **github/github-mcp-server** | 31,523 | 167 | Go | 2026-07-18 | GitHub's official MCP Server |
| **mukul975/Anthropic-Cybersecurity-Skills** | 25,740 | 14 | Python | 2026-06-26 | 817 structured cybersecurity skills for AI agents · Mapped to 6 frameworks: MITRE ATT&CK, NIST CSF 2.0, MITRE  |
| **czlonkowski/n8n-mcp** | 22,328 | 20 | TypeScript | 2026-07-16 | A MCP for Claude Desktop / Claude Code / Windsurf / Cursor to build n8n workflows for you  |
| **microsoft/mcp-for-beginners** | 16,777 | 0 | Jupyter Notebook | 2026-07-17 | This open-source curriculum introduces the fundamentals of Model Context Protocol (MCP) through real-world, cr |

## Other AI tooling

| Repo | Stars | Open issues | Lang | Last push | Description |
|------|-------|-------------|------|-----------|-------------|
| **asgeirtj/system_prompts_leaks** | 58,761 | 9 | JavaScript | 2026-07-17 | Extracted system prompts from Anthropic - Claude Fable 5, Opus 4.8, Claude Code, Claude Design. OpenAI - ChatG |
| **datawhalechina/happy-llm** | 32,149 | 52 | Jupyter Notebook | 2026-05-06 | 📚 从零开始构建大模型 |
| **liguodongiot/llm-action** | 24,742 | 17 | HTML | 2026-07-01 | 本项目旨在分享大模型相关技术原理以及实战经验（大模型工程化、大模型应用落地） |

---

## Re-run instructions (recursive wave)

```bash
topics=(mcp-cli agent-memory llm-serving coding-agent vector-search sigma-rule threat-hunting mcp-server mcp claude-code code-agent agent-framework rag retrieval-augmented-generation llm-inference inference-engine vllm tensor-rt transformer-model agent-harness agentic persistent-memory long-term-memory coding-assistant cli-agent terminal-agent llm-gateway model-gateway inference-server llm-eval evaluation-framework observability tracing opentelemetry llmops mlops prompt-engineering skill claude-skills agent-skills sigma detection-rule detection-engineering yara threat-detection siem soc-analysis soc blue-team security-rules elasticsearch security-anthropic ai-security llm-security gateway api-gateway sandbox code-sandbox code-execution-runtime rust-lang python-typescript typescript-ai go-ai pinecone qdrant weaviate chroma milvus vector-db vector-database haystack rag-framework llama-index langchain langgraph autonomous-agents tool-use function-calling mcp-tools)
i=0; for t in "${topics[@]}"; do
  i=$((i+1)); gh search repos --topic="$t" --sort=stars --limit 30 --json fullName,stargazersCount,openIssuesCount,updatedAt > /tmp/r_${i}.json &
  (( i % 10 == 0 )) && wait
done; wait
```

Filter: drop names matching `interview|java-guide|tutorial|course|roadmap|leetcode|notes|简历|面试`. Keep if stars ≥ 2k and primary-language ∈ {Python, Rust, Go, TypeScript}. Dedupe by `fullName`.
