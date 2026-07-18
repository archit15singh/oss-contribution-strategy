# OpenTelemetry Python Issue Analysis

**Repo:** open-telemetry/opentelemetry-python
**Stars:** 2.6k
**Forks:** 948
**Open issues:** 319
**Open PRs:** 58
**Last merged PR:** 2026-07-16

## Verdict

Rejected. Low merge velocity (58 open PRs = bottleneck). "Good first issues" are 4-6 years old with unresolved spec discussions. Low signal for resume purposes — OpenTelemetry is a "knows what it is" project. Not impressive to hiring managers compared to vLLM or SigmaHQ.

## Good First Issues

All are years old with stalled discussions:

### #5427 — docs: examples that references code should link to actual files in github
- **Fresh** (Jul 17, 2026)
- Documentation improvement
- One comment already proposing a fix approach
- Actually actionable — quick win

### #2990 — Abstract out OTLP http exporter logic
- Open since Oct 2022
- Enhancement — needs understanding of OTLP protocol and exporter architecture
- Someone asked for assignment in Jul 2025

### #2688 — Populate schema url for Resources based on the semantic conventions version
- Open since May 2022
- SDK work — spec-adjacent
- Requires understanding of OTel semantic conventions

### #2432 — Current context is empty with baggage.get_all
- Open since Feb 2022
- Originally filed as bug, relabelled as doc issue
- Long discussion about context propagation semantics
- A PR was opened (#5049, Apr 2026)

### #1559 — Support IPv6 transport for Jaeger agent (thrift over UDP) export
- Open since Feb 2021
- Feature request for Jaeger UDP export over IPv6
- Very niche

### #1059 — Add support for OTEL_LOG_LEVEL env variable
- Open since Aug 2020 — **6 years**
- Core work — affects SDK logging throughout
- Multiple volunteers over the years, none finished
- Spec issue #920 still unresolved (what values should OTEL_LOG_LEVEL accept?)
- High effort, high spec-ambiguity risk

## Lesson

Low velocity + stale issues + spec politics = poor ROI. Only #5427 (docs fix) is immediately actionable, but it's a doc fix — low resume signal. Skip OTel.
