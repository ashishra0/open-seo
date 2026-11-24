# Unclench SEO baseline (2026-11-24)

- **OpenSEO project id:** `2e101a2b-55da-4328-bb27-0b8db8d7aee7` (Unclench, unclench.ai, US / en, location 2840)
- **OpenSEO report:** "Unclench SEO baseline — Nov 2026", id `303a16c5-c7de-490f-8ed8-baf31eefa489`
- **Site audits:** `8ada37a9-6a25-48fd-9e86-62d5d97ff5e1` (40 pages, mostly /docs), `6aded06c-455a-4fb4-b22a-ae35482b36d8` (40 pages, /docs and legal excluded)
- **Market:** US, English. Volumes and traffic are DataForSEO estimates.

## Domain metrics

| Metric | unclench.ai |
| --- | --- |
| Organic keywords (US) | 0 (provider has no data for the domain) |
| Est. organic traffic / month | 0 |
| Backlinks | 11 |
| Referring domains | 7 (3 visible with spam filter: rankcert.com, onesvibe.app, botwhois.org) |
| Domain rank (0–1000) | 10 |
| Backlink spam score | 29 |
| Referring-domain trend | 3 (2026-09-30) → 6 (2026-10-31) → 7 (2026-11-24) |

## Ranked keywords

`get_ranked_keywords` returned 0 rows. Live SERP checks (US desktop, depth 20, 2026-11-24, 3 merged reads each):

| Query | unclench.ai best position |
| --- | --- |
| unclench ai (brand) | #5, /docs/knowledge, seen in 1 of 3 reads. Homepage not in top 20. slashdot.org (#4, "Cust AI vs. Unclench") and creatorstoolbox.com (#10) list the product. |
| intercom alternatives | not in first 20 |
| zendesk alternatives | not in first 20 |
| chatbase alternatives | not in first 20 |
| help scout alternatives | not in first 20 |
| intercom pricing | not in first 20 |
| zendesk pricing | not in first 20 |
| ai support agent | not in first 20 |
| nps calculator | not in first 20 |
| clay alternatives | not in first 20 |

Observation: the live SERP reads missed the homepage, but Search Console (below) shows "unclench ai" at avg position 1.2 and the homepage at 2.4. Trust GSC for brand.

## Site audit summary

Two 40-page crawls (Workers Free plan cap), 80 pages total. Both stopped at the page limit; the first run spent its budget on /docs, so a second run excluded /docs, /privacy, /terms, /subprocessors, /bot, /support. 7 sitemap URLs were still not crawled in run 2.

| Severity | Count | Issues |
| --- | --- | --- |
| Critical | 0 | none |
| Warning | 1 (per run) | crawl-page-limit (run 1: 37 URLs not crawled; run 2: 7) |
| Info | 4 distinct | heading-order-skip ×3, meta-description-too-short ×3 (overlap across runs) |

Top issues with example URLs:
- Heading levels skip: https://unclench.ai/use-cases, /docs/getting-started, /docs/identity
- Meta description under 70 chars: /docs/agent (46), /docs/conversations/notifications (61), /docs/troubleshooting (52)

Every crawled page: HTTP 200, indexable, in sitemap, 1 H1, 0 images missing alt, response 47–119 ms. Thinnest marketing pages: /tools/icp-generator (390 words), /lead-finder-and-support-agent (425), /tools/csat-calculator (433). Longest: /intercom-pricing (1,901), /chatbase-alternatives (1,654), /zendesk-pricing (1,625).

Sitemap: 45 URLs. The 22 /docs pages are not in /sitemap.xml but are reachable and were crawled.

## Competitor comparison

Domain overview (US, subdomains included) and backlinks overview, 2026-11-24.

| Domain | Role | Organic keywords | Est. traffic / mo | Referring domains |
| --- | --- | --- | --- | --- |
| unclench.ai | — | 0 | 0 | 7 |
| zendesk.com | support | 540,256 | 1,209,140 | not pulled |
| clay.com | lead gen | 39,602 | 59,190 | not pulled |
| apollo.io | lead gen | 7,194 | 51,609 | not pulled |
| intercom.com | support | 9,734 | 12,959 | not pulled |
| helpscout.com | support | 7,396 | 10,013 | 28,138 |
| kayako.com | support (SERP) | 8,630 | 9,887 | not pulled |
| crisp.chat | support (SERP) | 1,954 | 6,127 | 13,048 |
| chatbase.co | support | 2,415 | 3,789 | 8,715 |
| lusha.com | lead gen | 5,232 | 3,331 | not pulled |

The intercom.com figure looks low for a brand that size; treat provider traffic numbers as directional.

SERP competitors (`find_serp_competitors`, 16 money keywords, organic): reddit.com (9 of 16 keywords, avg #2), chatbot.com (#1 for "customer support chatbot" and "ai chatbot for website"), salesforce.com, youtube.com, pipeline.zoominfo.com, thecxlead.com, zendesk.com, crisp.chat, ibm.com, kayako.com (#1 "intercom alternatives", #2 "zendesk alternatives"), salesgenie.com, cognism.com, rb2b.com (#1 "apollo alternatives"), apollo.io, helpcrunch.com. Help Scout and Chatbase barely appear on these queries; Crisp, Kayako, ChatBot and ZoomInfo were added to project competitors.

## Keyword opportunities

55 keywords saved in OpenSEO, tagged `competitor-support` (16), `ai-support-agent` (11), `lead-gen` (8), `competitor-leadgen` (7), `free-tools` (13). Current position is "—" (not in the first 20 for the checked ones; no ranking data at all for the rest).

| Keyword | Vol | KD | Intent | Current | Target page |
| --- | --- | --- | --- | --- | --- |
| out of office message | 22,200 | 4 | info | — | /tools/out-of-office-message-generator |
| nps calculator | 8,100 | 0 | info | not in top 20 | /tools/nps-calculator |
| customer support chatbot | 2,900 | 47 | info | — | /support-agent |
| canned responses | 1,900 | 0 | info | — | /tools/canned-response-generator |
| zendesk alternatives | 1,600 | 7 | commercial | not in top 20 | /zendesk-alternatives |
| zendesk pricing | 1,600 | 10 | commercial | not in top 20 | /zendesk-pricing |
| ai lead generation | 1,600 | 34 | commercial | — | /lead-finder |
| apollo pricing | 1,600 | 11 | commercial | — | new page |
| ai chatbot for customer service | 1,000 | 47 | commercial | — | /support-agent |
| intercom pricing | 880 | 19 | commercial | not in top 20 | /intercom-pricing |
| freshdesk alternatives | 880 | 8 | commercial | — | new page |
| ai customer support | 880 | 35 | info | — | /support-agent |
| ai chatbot for website | 720 | 43 | commercial | — | /free-ai-support-agent |
| clay alternatives | 480 | 0 | info | not in top 20 | /clay-alternatives |
| zoominfo alternatives | 480 | 0 | info | — | new page |
| csat calculator | 480 | 1 | info | — | /tools/csat-calculator |
| ai helpdesk | 480 | 16 | navigational | — | /support-agent |
| chatbase alternatives | 390 | 0 | commercial | not in top 20 | /chatbase-alternatives |
| apollo alternatives | 390 | 0 | info | — | /apollo-alternatives |
| ai lead generation tool | 390 | 31 | commercial | — | /lead-finder |
| erlang c calculator | 390 | 7 | info | — | /tools/erlang-c-calculator |
| how to find customers | 390 | 8 | info | — | new page |
| refund policy template | 390 | 29 | info | — | /tools/refund-policy-generator |
| intercom alternatives | 320 | 0 | commercial | not in top 20 | /intercom-alternatives |
| ideal customer profile template | 320 | 25 | info | — | /tools/icp-generator |
| b2b lead generation tool | 260 | 22 | commercial | — | /lead-finder |
| cold email software | 260 | 24 | commercial | — | /lead-finder |
| refund policy generator | 260 | 32 | info | — | /tools/refund-policy-generator |
| zendesk vs intercom | 210 | 14 | navigational | — | /zendesk-vs-intercom |
| apollo io alternatives | 210 | 0 | commercial | — | /apollo-alternatives |
| customer service email templates | 210 | 0 | info | — | /tools/customer-service-reply-generator |
| apollo vs clay | 170 | 0 | info | — | new page (or /unclench-vs-apollo) |
| help scout pricing | 170 | 38 | info | — | new page |
| faq generator | 170 | 0 | info | — | /tools/faq-generator |
| ai support agent | 140 | 19 | commercial | not in top 20 | /support-agent |
| help scout alternatives | 140 | 0 | info | not in top 20 | /help-scout-alternatives |
| lusha alternatives | 140 | 0 | info | — | new page |
| out of office message generator | 140 | 0 | info | — | /tools/out-of-office-message-generator |
| chatbase pricing | 110 | 18 | commercial | — | new page |
| ai customer support agent | 90 | 33 | commercial | — | /support-agent |
| intercom alternative | 70 | 12 | info | — | /intercom-alternatives |
| intercom fin pricing | 50 | 41 | commercial | — | /intercom-fin-alternative |

Observations:
- The six existing competitor-support pages target 4,930 searches/mo at KD 0–19 with CPCs of $20–$143, and none rank yet. Content exists (1,200–1,900 words); authority and indexing are the gap.
- Free-tool terms carry the largest volume (out of office message 22,200, nps calculator 8,100, canned responses 1,900) at KD 0–4, but intent is informational.
- No page exists for apollo pricing (1,600, KD 11), freshdesk alternatives (880, KD 8), zoominfo alternatives (480, KD 0), help scout / chatbase pricing.
- Several tool names have no measurable volume: icp generator (10), ideal customer profile generator (10), auto reply generator (10), and no data for support ticket response generator, canned response generator, customer complaint response generator, customer service reply generator, support metrics calculator, faq accordion generator.
- "intercom alternatives" research is polluted by hardware intercom terms (intercom system 4,400); only the SaaS rows were kept.

## What could not be measured

- **Search Console and GA4: connected** (`sc-domain:unclench.ai`, GA4 `properties/554695119`); see "Search Console and GA4 (2026-11-24)". Still missing: revenue attribution (`purchase` is a key event but recorded 0 in the last 28 days) and a branded vs non-branded split (not pulled).
- Backlinks for intercom.com, zendesk.com, apollo.io, clay.com, lusha.com, kayako.com (not pulled, to stay in budget).
- Positions beyond the 10 live-checked queries (ranked-keyword data is empty, so other saved keywords show "—", which means unknown, not checked).
- Lighthouse / Core Web Vitals (not run).
- 7 sitemap URLs not reached by either 40-page crawl.
- AI-visibility (not run; no trackers created per instructions).

## Search Console and GA4 (2026-11-24)

- **Search Console:** `sc-domain:unclench.ai` (account support@unclench.ai, siteOwner). First data: 2026-09-15.
- **GA4:** `properties/554695119` "Unclench", web stream `G-GJZTHKMVCE`, enhanced measurement on, 0 setup issues.
- Windows: GSC 28 days = 2026-10-25 → 11-21, 3 months = 2026-08-21 → 11-21 (Pacific). GA4 28 days = 2026-10-27 → 11-23 (Asia/Calcutta).

### GSC totals (web)

| Window | Clicks | Impressions | CTR | Avg position |
| --- | --- | --- | --- | --- |
| Last 28 days | 19 | 11,115 | 0.17% | 71.3 |
| Last 3 months | 35 | 19,440 | 0.18% | 68.5 |

Totals are summed from daily rows; avg position is impression-weighted across days.

### Top 15 queries by impressions

| Query | Impr 28d | Pos 28d | Impr 3m | Pos 3m |
| --- | --- | --- | --- | --- |
| intercom pricing | 520 | 83.1 | 716 | 81.8 |
| zendesk pricing | 179 | 83.6 | 292 | 83.1 |
| intercom pricing plans | 170 | 81.8 | 223 | 80.6 |
| intercom.io pricing | 163 | 83.3 | 221 | 81.7 |
| zendesk pricing compare | 162 | 70.8 | 228 | 74.2 |
| zendesk connect pricing | 159 | 85.0 | 216 | 85.0 |
| intercom plans | 148 | 88.0 | 191 | 87.0 |
| how much does intercom cost | 144 | 82.0 | 185 | 80.7 |
| intercom free plan | 143 | 86.3 | 213 | 83.9 |
| pricing intercom | 142 | 81.9 | 198 | 81.0 |
| zendesk plus pricing | 141 | 79.6 | 195 | 81.4 |
| zendesk/pricing | 140 | 82.3 | 203 | 82.1 |
| zendesk inbox pricing | 130 | 84.8 | 182 | 85.5 |
| is intercom free | 130 | 75.4 | 187 | 74.5 |
| intercom.com pricing | 124 | 88.3 | 177 | 86.1 |

The 3-month top 15 is the same set except zendesk knowledge base pricing (182) replaces intercom.com pricing (177). Every query above has 0 clicks. The only query with clicks in either window is "unclench ai" (4 clicks, 18 impressions, pos 1.2). 458 queries in 28 days, 546 in 3 months.

### Top 10 pages by impressions

| Page | Impr 28d | Clicks 28d | Pos 28d | Impr 3m | Clicks 3m | Pos 3m |
| --- | --- | --- | --- | --- | --- | --- |
| /zendesk-pricing | 4,935 | 0 | 81.3 | 7,893 | 0 | 82.0 |
| /intercom-pricing | 2,461 | 0 | 83.6 | 3,604 | 0 | 82.1 |
| /tools/auto-reply-generator | 1,339 | 1 | 42.1 | 3,462 | 2 | 37.3 |
| /help-scout-alternatives | 432 | 0 | 81.4 | 995 | 0 | 80.4 |
| /export-intercom-conversations | 325 | 0 | 44.9 | 549 | 1 | 45.6 |
| /intercom-alternatives | 248 | 0 | 82.2 | 684 | 0 | 83.9 |
| /tools/support-ticket-response-generator | 218 | 0 | 21.3 | 310 | 0 | 19.9 |
| /tools/nps-calculator | 152 | 0 | 68.7 | 185 | 0 | 67.9 |
| /zendesk-alternatives | 140 | 0 | 77.8 | 224 | 0 | 78.0 |
| /intercom-fin-alternative | 105 | 0 | 75.2 | 131 | 0 | 68.0 |

Pages with clicks (28d): / 9 (pos 2.4), /about 5 (3.6), /lead-finder 1, /pricing 1, /tools/auto-reply-generator 1, /tools/customer-service-reply-generator 1, /tools/faq-accordion-generator 1.

### URL inspection

| URL | Coverage | Last crawl (UTC) | Canonical (Google = declared) |
| --- | --- | --- | --- |
| / | Submitted and indexed | 2026-11-16 | yes |
| /pricing | Submitted and indexed | 2026-11-22 | yes |
| /intercom-alternatives | Submitted and indexed | 2026-11-13 | yes |
| /zendesk-alternatives | Submitted and indexed | 2026-11-22 | yes |
| /unclench-vs-intercom | Submitted and indexed | 2026-11-22 | yes |
| /support-agent | Submitted and indexed | 2026-11-12 | yes |
| /lead-finder | Submitted and indexed | 2026-11-13 | yes |

All crawled as mobile, robots allowed. Breadcrumb rich results pass on the three comparison/alternatives pages.

### Search opportunities (positions 4–20, 28 days)

29 candidate pages, 4 joined with GA4 landing-page data. Scored: /tools/faq-accordion-generator 57 (pos 9.2, 89 impr), /lead-finder 43 (pos 6.3, 6 impr, 1 sign_up), /pricing 37 (pos 5.3, 41 impr), /tools/customer-service-reply-generator 33 (pos 13.6, 60 impr). Unscored (no GA4 sessions) include /tools/faq-generator (pos 18.8, 58), /unclench-vs-intercom (6.6, 48), /free-ai-support-agent (5.4, 38), /docs (5.6, 36), /unclench-vs-zendesk (6.7, 24), /tools/out-of-office-message-generator (8.0, 21).

### GA4 (last 28 days)

Organic search: 15 sessions (−25% vs 20), 14 users, 5 engaged sessions (33% vs 90%), 1 key event, 0 transactions.

| Organic landing page | Sessions | Engaged | Key events |
| --- | --- | --- | --- |
| / | 4 | 2 | 0 |
| /about | 4 | 2 | 0 |
| /tools/auto-reply-generator | 2 | 0 | 0 |
| /lead-finder | 1 | 1 | 1 (sign_up) |
| /pricing | 1 | 0 | 0 |
| /tools/customer-service-reply-generator | 1 | 0 | 0 |
| /tools/faq-accordion-generator | 1 | 0 | 0 |
| (not set) | 1 | 0 | 0 |

| Channel | Sessions | Prev 28d | Users | Engagement | Key events |
| --- | --- | --- | --- | --- | --- |
| Paid Other | 218 | 49 | 174 | 50% | 30 |
| Direct | 73 | 151 | 56 | 58% | 9 |
| Organic Social | 45 | 24 | 38 | 69% | 5 |
| Referral | 37 | 83 | 4 | 95% | 6 |
| Organic Search | 15 | 20 | 14 | 33% | 1 |
| AI Assistant | 1 | — | 1 | 100% | 0 |
| Unassigned | 1 | — | 1 | 0% | 0 |

Key events configured (7): `sign_up`, `begin_checkout`, `purchase`, `generate_lead`, `free_tool_used`, `qualify_lead`, `close_convert_lead`. Recorded in 28 days, all channels: `sign_up` 45 (45 users), `begin_checkout` 5 (2 users), `free_tool_used` 1. No trial-specific event; `sign_up` is the signup key event. 0 `purchase`.

Observations:
- All seven key pages are indexed with matching canonicals and were crawled in the last two weeks; indexing is not the gap.
- Brand search works: "unclench ai" ranks 1.2 in GSC and the homepage averages position 2.4. The earlier live SERP check (homepage not in top 20) is not borne out by GSC.
- /zendesk-pricing and /intercom-pricing take 67% of 28-day impressions at positions 81–84 with 0 clicks. Pricing-intent demand is real; the pages sit on page 8–9.
- The free tools rank best for non-brand terms: /tools/support-ticket-response-generator (21.3), /tools/auto-reply-generator (42.1, 1,339 impressions), /tools/faq-accordion-generator (9.2).
- Organic search is 15 of 390 sessions (3.8%) and 1 of 51 key events. Paid Other drives 56% of sessions and 30 key events.
- `sign_up` (45 in 28 days) is tracked; only 1 came from organic search (landing on /lead-finder).
