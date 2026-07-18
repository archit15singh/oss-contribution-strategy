# Meta Analysis — Project Comparison

## Quick Reference

| Project | Stars | Open Issues | Open PRs | Last Merge | GFIs | Personal Edge | Time to 1st PR | Resume Signal |
|---------|-------|-------------|----------|------------|------|---------------|----------------|---------------|
| SigmaHQ | 10.8k | 12 | 153 | Jul 16 | — | **HIGH** | 1-2 days | 7/10 |
| vLLM | 86.6k | 2k | 3.8k | Jul 18 | ~10 | Medium | 2-4 wks | 10/10 |
| Qdrant | 33.4k | 461 | 162 | Jul 17 | 3 | Low | 2-4 wks | 8/10 |
| OTel Python | 2.6k | 319 | 58 | Jul 16 | 6 | None | 1-2 wks | 5/10 |

## Competition Analysis

**The "good first issue" problem:**
- Every labelled "good first issue" on popular repos gets 5-10+ volunteers within days
- vLLM's #32335 spawned 8+ contributors, 15+ sub-PRs
- vLLM's #32268 has 3 different people claiming/reclaiming it
- This is because AI agents and beginners specifically target these labels

**The solution:**
- Pick repos where domain expertise matters (SigmaHQ)
- Pick unlabelled issues where you can demonstrate competence without competition
- Build reputation in a smaller repo first, then use that to get assigned to better issues in bigger repos

## The Narrative Framework

Each PR should feed a story you tell in interviews:

**Phase 1 — SigmaHQ:**
> "At Abnormal AI, I wrote production detection rules. I contributed several Sigma rules to the open source community, including [specific rule]. Maintainers valued my contributions because I understood detection engineering."

**Phase 2 — vLLM:**
> "I contributed to vLLM's [specific component], which directly serves LLMs in production. I identified a [bug/refactor opportunity] and drove it through review."

**Combined:**
> "I bridge security and AI infrastructure — I've contributed detection rules that protect AI systems and serving infrastructure that runs them."

## What Hiring Managers Actually See

They skim your GitHub profile. What they look for:
1. ✅ **Meaningful contributions to well-known projects** (not 100 tiny PRs)
2. ✅ **Sustained engagement** (multiple PRs over months, not one drive-by)
3. ✅ **Domain expertise** (specialised contributions, not generic typos)
4. ✅ **Code quality** (complex, well-tested changes)

What they ignore:
- ❌ Documentation-only PRs (unless to a core project)
- ❌ One-off trivial fixes
- ❌ Contributions to obscure projects
- ❌ AI-generated PRs (they can tell)

## Recommended Cadence

**Weeks 1-4: SigmaHQ blitz**
- 1 rule proposal or FP fix per week
- Engage in issue discussions
- Build relationship with maintainers

**Weeks 5-8: SigmaHQ depth**
- Tackle a coverage gap that requires real analysis
- Propose a rule for a novel TTP
- Begin watching vLLM issues for an opening

**Weeks 9-12: vLLM entry**
- By now you have 5+ merged PRs in SigmaHQ
- Use that credibility when engaging on vLLM issues
- Pick an unlabelled bug that maps to your Python/systems skills
