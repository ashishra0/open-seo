# Unclench: 30-day organic roadmap (2026-11-24 → 2026-12-24)

Goal: paid trials of Growth/Scale/Business, not traffic for its own sake. Built from [the baseline](./unclench-baseline.md).

## Diagnosis

1. **Pages are indexed but rank too low to get clicks: an authority problem, not an indexing or content problem.** GSC, last 28 days: 11,115 impressions, 19 clicks, CTR 0.17%, avg position 71. All key pages are indexed and the brand ranks #1. The six compare and pricing pages are 1,200–1,900 words, technically clean, and aimed at 4,930 searches/month at KD 0–19, yet none reach page 1. Organic brought 15 of 390 GA4 sessions and 1 of 45 `sign_up`s.
2. **Authority is very low:** 7 referring domains, domain rank 10. Intercom/Zendesk-alternatives SERPs are won by Kayako, Reddit, Crisp and ChatBot, sites with 10k+ referring domains, but at KD 0–19 a few dozen relevant links are often enough.
3. **The highest-intent queries are competitor-led** (alternatives and pricing; CPC $20–$143). Free-tool terms have the volume (out of office message 22k, nps calculator 8k), but they're informational. They earn links; they don't bring trials directly.

So the order is: earn links, push the pages already showing in GSC at positions 8–30, then build pages for the gaps. Writing more content before Google trusts the domain won't move anything.

## Week 1: measurement and quick wins (no DataForSEO spend)

| # | Action | Owner | Done when |
| --- | --- | --- | --- |
| 1 | ~~Connect GSC and GA4~~ done: `sc-domain:unclench.ai`, GA4 `554695119`; all key pages indexed | — | done |
| 2 | Check `/docs/sitemap.xml` is submitted in GSC (both sitemaps are listed in robots.txt) | Ashish | GSC Sitemaps lists both |
| 3 | Track a paid conversion: `sign_up` and `begin_checkout` fire, `purchase` is configured but has recorded 0. Confirm it fires when a trial converts, so organic → paid is measurable | Ashish | `purchase` appears in GA4 |
| 4 | Run `get_search_opportunities`: pages with impressions at positions 8–30 get title/meta rewrites and internal links first | agent | Short list saved to project context |
| 5 | Re-run the site audit with Workers Paid, or as two crawls that skip /tools and /docs, to cover the 7 uncrawled URLs | agent | Full-site audit saved |

## Week 2: authority sprint (aim for 15–25 new referring domains in 30 days)

| # | Action | Why |
| --- | --- | --- |
| 6 | List Unclench on G2, Capterra, GetApp, Software Advice, SaaSworthy, AlternativeTo (as an alternative to Intercom, Zendesk, Chatbase, Apollo), Product Hunt, BetaList, There's An AI For That, Futurepedia | These are the pages ranking for "X alternatives", and they pass brand trust |
| 7 | Run the `link-prospecting` skill on "intercom alternatives", "chatbase alternatives" and "ai support agent": find listicles that rank but don't list Unclench, then send pitches drafted from your own words | Getting onto the pages that already rank is the fastest route to buyers |
| 8 | Reddit and community answers (r/SaaS, r/startups, r/CustomerSuccess, Indie Hackers) on Intercom-price and finding-first-customers threads, with disclosure | Reddit is the #1 SERP competitor on 9 of 16 money keywords |
| 9 | Promote the free tools (NPS, CSAT, Erlang C, out-of-office) in "free tools for support teams" roundups | Tools attract links that compare pages can't |

## Week 3: convert the competitor demand

| # | Action | Target keyword (vol, KD) |
| --- | --- | --- |
| 10 | New page: **Freshdesk alternatives** (same template as zendesk-alternatives) | freshdesk alternatives (880, 8) |
| 11 | New pages: **Apollo pricing** and **Apollo / ZoomInfo / Lusha alternatives** (only if not already live; the baseline lists /apollo-alternatives as a target, so confirm), positioned as "for founders, not SDR teams" | apollo pricing (1,600, 11), zoominfo alternatives (480, 0), apollo alternatives (390, 0), lusha alternatives (140, 0) |
| 12 | New pages: **Help Scout pricing**, **Chatbase pricing** (copy the intercom-pricing format, which is the strongest page at 1,901 words) | help scout pricing (170), chatbase pricing (110) |
| 13 | Internal links: every compare page links to the other compare pages, /pricing and the free demo; free-tool pages get a contextual CTA to /free-ai-support-agent or Lead Finder | Spreads the authority from week 2 and turns tool visitors into trials |

## Week 4: measure and decide

| # | Action |
| --- | --- |
| 14 | Pull GSC performance through OpenSEO (`get_search_console_performance`, `get_search_opportunities`): impressions per compare page, queries at positions 8–30 |
| 15 | Rank tracker on about 25 money keywords (the competitor-support and lead-gen tags). Check the cost with `estimate_rank_tracker_cost` first and ask Ashish to approve before creating it |
| 16 | Rewrite titles and meta descriptions for pages with impressions but CTR under 1% |
| 17 | Save a "30-day check-in" report (`seo-report`) and compare it with the baseline report `303a16c5…` |

## Weekly targets

Rankings lag work by 2–6 weeks, so weeks 1–3 are judged on output and leading signals; week 4 on outcomes.

| Week (ends) | Target | Checked with |
| --- | --- | --- |
| 1 (Dec 1) | `purchase` fires on a paid conversion; both sitemaps in GSC; quick-win list of 5–10 pages at positions 8–30 with new titles/meta shipped | GA4 key events, GSC Sitemaps, project context |
| 2 (Dec 8) | 10 directory/marketplace profiles live; 10 listicle pitches sent; 5 helpful community answers; referring domains 7 → 12+ | `get_backlinks_overview`, outreach list |
| 3 (Dec 15) | 4–6 new pages live (Freshdesk alternatives, Apollo pricing, Apollo/ZoomInfo/Lusha alternatives, Help Scout/Chatbase pricing); internal links added; referring domains 18+; new pages indexed | `inspect_urls`, backlinks overview |
| 4 (Dec 22) | Outcomes below; rank tracker approved and running; 30-day report saved | GSC performance, GA4 organic, report |

## Targets for 2026-12-24

- Organic clicks per 28 days up from 19 to 100+; avg position on compare pages under 30.
- 25+ referring domains (from 7).
- GSC impressions on at least 4 of the 6 compare pages; at least 2 in the top 30.
- 5+ organic `sign_up`s per 28 days (from 1), attributed by landing page.

## Not now

- AI visibility tracking: it needs Workers Paid on this deployment and has a recurring DataForSEO cost. Revisit once compare pages reach page 1–2.
- Long-tail blog content: no authority to rank it yet.
- More free tools: most existing tool names have no measurable volume. Improve and promote the 4 that do.
