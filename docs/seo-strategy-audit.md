# SEO Strategy Audit — mainebachelorette.com
*Last updated: 2026-06-13*

---

## 1. Search Intent > Keywords

**The principle:** Google ranks pages that best satisfy the searcher's intent, not pages that are most keyword-optimized. A page that answers "how much does a bachelorette boat cruise in Maine cost?" will outrank one that just stuffs "bachelorette boat cruise Maine" everywhere.

### ✅ What's working
- Pages are intent-matched: `/boat-cruise/` is transactional (FareHarbor widget front and center), guide and activities pages are informational
- Primary queries are well-targeted: "bachelorette boat cruise Portland Maine", "Maine bachelorette party ideas", "Portland Maine bachelorette weekend"
- FAQ schema on `/boat-cruise/` addresses real pre-purchase questions

### ❌ What's missing
- **No pricing anywhere on the site.** One of the highest-intent searches in this space is "how much does a bachelorette boat cruise Maine cost" or "Maine bachelorette party cost". We give zero indication of budget. This is the #1 content gap.
- **No seasonal intent content.** Brides search "summer bachelorette in Maine", "fall bachelorette Maine", "best time to visit Portland for bachelorette". The site has one fall foliage package but no seasonal landing content.
- **Missing comparison queries.** "Maine vs Newport bachelorette", "Portland Maine vs Bar Harbor bachelorette" — these capture undecided searchers who haven't picked a destination yet. High-intent, low-competition.
- **No "group size" content.** "Bachelorette party for 8 in Maine", "large bachelorette group Portland Maine" — common filters people apply.
- **Weak transactional modifiers.** "Book", "hire", "reserve", "charter" appear rarely in body copy. Transactional pages should lean into these.

### To-do
- [ ] Add a transparent pricing section to `/boat-cruise/` ("Starting from $X per person" or range) — even a ballpark satisfies intent and reduces bounce
- [ ] Add seasonal guidance block to Portland Guide: best months, what changes by season
- [ ] Create a comparison/alternatives FAQ entry: "Why Portland over Newport or Bar Harbor?"
- [ ] Add group size copy to boat-cruise: "Perfect for groups of 8–16"

---

## 2. Topical Authority (Not Just Single Posts)

**The principle:** Google rewards sites that demonstrate comprehensive expertise on a topic, not just one good page. A topical cluster — a hub page + supporting pages + internal links — outranks isolated articles even when keyword match is weaker.

### ✅ What's working
- 4-page cluster covers the core topics: homepage (brand), boat cruise (money page), Portland guide (weekend planning), activities (ideas hub)
- Pages genuinely cross-link to each other with contextual relevance
- Blog is built and ready — just gated behind noindex until content is ready

### ❌ What's missing
- **Blog is dark.** Topical authority is built through volume of relevant, interlinked content. With 4 pages we're a thin cluster. Competitors with 20+ articles on Maine travel/bachelorette content will outrank on long-tail even if our money pages are better.
- **Content depth is thin.** Each page is ~1,300–1,600 words of rendered text. Competitive "best bachelorette destinations" queries favor 2,500+ word comprehensive content. Google measures topical coverage, not just keyword density.
- **Zero seasonal or comparison content.** No pages targeting month-specific queries, no "vs" content, no "best of Maine" roundups that would build authority on adjacent topics and funnel into boat cruise.
- **No content on planning logistics.** "How to plan a bachelorette party in Maine", "bachelorette party checklist Maine" — these are high-volume informational queries that naturally funnel to the booking page.
- **Missing entity adjacency.** Nothing about Peaks Island ferry, Portland Head Light history, Casco Bay islands detail — content that would build topical authority around Maine coastal experiences, not just bachelorette.

### To-do
- [ ] Launch the blog with 4–6 posts targeting long-tail: "Best bachelorette party weekend in Maine", "Maine bachelorette itinerary from Boston", "What to pack for a bachelorette boat cruise", "10 reasons to choose Portland Maine over Nashville for a bachelorette"
- [ ] Expand `/portland-maine-guide/` to 2,500+ words — add neighborhoods section, weather/packing, what month to visit
- [ ] Expand `/maine-bachelorette-activities/` with more logistics per activity (price ranges, reservation tips, best time of year)
- [ ] Add a "Planning Checklist" section or page: timeline (book 3 months out), deposits, group coordination

---

## 3. Real Experience Signals (EEAT)

**The principle:** Google's quality rater guidelines explicitly evaluate Experience, Expertise, Authoritativeness, and Trustworthiness (EEAT). For a transactional site in a "Your Money" category (event booking), EEAT is scrutinized. A site with no visible "who is this" information is a red flag.

### ✅ What's working
- 6 real customer reviews displayed prominently with names and years
- Review + AggregateRating schema in JSON-LD — eligible for star snippets in search results
- Named, credentialed partners: Chaval and The Ugly Duckling (James Beard–nominated) add real authority
- Named landmarks (Portland Head Light, Casco Bay, Eventide Oyster Co.) signal genuine local knowledge

### ❌ What's missing
- **No About page or author.** Who runs mainebachelorette.com? Google evaluates "who is responsible for this content." An anonymous site selling event bookings scores poorly on EEAT. A one-page About with a person, a photo, and a Maine connection is a meaningful signal.
- **Article schema author is "Organization".** Guide and activities pages have `"author": { "@type": "Organization", "name": "Maine Bachelorette" }`. For EEAT, `Person` authors with `sameAs` links (LinkedIn, Instagram) are stronger. Google is looking for a real human behind the expertise.
- **No press/media mentions or "As Seen In".** Even one travel blog citation or Maine tourism feature dramatically improves authority perception.
- **Review dates are placeholder ISO dates** (`2023-01-01`), not real dates. If Google cross-references these against actual review dates on Google Maps/Yelp, a mismatch can flag content credibility.
- **No visible physical presence.** "Downtown Portland's Old Port" in the footer is the only address signal. A Google Business Profile for mainebachelorette.com with matching NAP would strengthen local EEAT.
- **No team or captain photos.** The site sells a personal experience (you're on a private boat with a crew) but shows zero crew/team. Trust gap for high-ticket bookings.

### To-do
- [ ] Create an `/about/` page: who runs this site, Maine connection, why they built it, photo
- [ ] Update Article schema author to `Person` type with a `sameAs` pointing to a LinkedIn or Instagram
- [ ] Update Review schema `datePublished` values to real approximate dates (not Jan 1 placeholder)
- [ ] Set up Google Business Profile for mainebachelorette.com
- [ ] Add captain/crew photos to `/boat-cruise/` — real faces build trust for high-ticket bookings
- [ ] Add a "Trusted by X bachelorette parties" social proof number if real data exists

---

## 4. CTR & Engagement Metrics

**The principle:** Google observes how many people click your result vs competitors (CTR), and whether they stay or bounce back (dwell time / pogo-sticking). High CTR = Google shows you more. Pogo-sticking = Google shows you less.

### ✅ What's working
- FAQPage schema on boat-cruise and Portland Guide → FAQ dropdowns can appear in SERP, expanding result footprint
- AggregateRating schema → 5-star display eligible in rich results (huge CTR boost when it shows)
- Titles are keyword-specific and intent-clear

### ❌ What's missing
- **Meta descriptions are feature lists, not pitches.** Current: *"Private bachelorette boat cruise on Casco Bay, Portland Maine. Up to 16 guests. Choose from mimosa brunch, sunset charter..."* Better: *"Your crew. Your boat. Your Casco Bay. Private Maine bachelorette charters from [price] — James Beard catering, 6 packages, groups up to 16."* Emotional hook + differentiator + CTA.
- **Meta descriptions are over 155 chars on 3 pages** — Google truncates with ellipsis, killing the CTA.
- **No sitelinks schema or organizational structured data** to enable sitelink expansion in search results for branded queries.
- **No social count or booking volume signals** in visible content — "250+ Maine bachelorette groups served" in a trust bar would be a CTR magnet and EEAT signal.
- **3 pages have no `og:site_name`, `og:image:width/height`** — affects how the link preview renders on Instagram DMs, iMessage, Facebook where brides share planning links.

### To-do
- [ ] Rewrite all 4 meta descriptions as emotional pitches, not feature lists — max 150 chars
- [ ] Add `og:site_name="Maine Bachelorette"` and `og:image:width="1200" og:image:height="630"` to all pages
- [ ] If real booking volume data exists, add a visible "X groups booked in 2025" social proof element
- [ ] Expand FAQPage schema on Activities page (currently only on boat-cruise and Portland guide)

---

## 5. Internal Linking

**The principle:** Internal links pass authority (PageRank) between pages and signal to Google which pages are most important. Anchor text is a relevance signal. `"Learn More"` is dead weight; `"Book the Mimosa Brunch Charter"` tells Google exactly what the destination page is about.

### ✅ What's working
- Every page links to `/boat-cruise/` — good
- Footer consistently links all core pages with descriptive anchor text
- Portland Guide and Activities cross-link at section level

### ❌ What's missing
- **Weak anchor text on guide cards.** Homepage guide cards link to Portland guide and activities with anchor text "Learn More" — this passes zero keyword relevance. Should be "Portland Maine Bachelorette Guide" and "Maine Bachelorette Activities."
- **No contextual deep links to `/boat-cruise/#packages`.** Activities page mentions the boat cruise but links to `/boat-cruise/` — a deep link to the specific mimosa brunch or sunset package would pass anchor-text relevance to those sub-sections.
- **No blog to link FROM.** Blog content would create 10–20 more internal entry points, each passing authority down into the money page. This is why the blog matters for more than traffic.
- **Portland Guide doesn't link to specific activities.** It mentions the Old Port bar crawl, Eventide, Peaks Island — none are linked to the `/maine-bachelorette-activities/` page entries for those activities.
- **No "pillar/cluster" explicit linking pattern.** Each blog post should link back to a hub page with keyword-rich anchor text.

### To-do
- [ ] Change homepage guide card anchor text from "Learn More" to descriptive text
- [ ] Add 2–3 contextual deep links in Activities page to `/boat-cruise/#packages` with anchor text matching package names
- [ ] Link Portland Guide activity mentions to corresponding sections on `/maine-bachelorette-activities/`
- [ ] When blog launches: every post must include 1–2 contextual links to `/boat-cruise/` with varied keyword-rich anchor text

---

## 6. Technical SEO = Hygiene, Not Advantage

**The principle:** Technical SEO doesn't make you rank — it just prevents you from being penalized. Core Web Vitals are the exception: they're a direct ranking signal.

### ✅ What's working
- Canonical URLs on all pages ✓
- Mobile-first CSS with proper breakpoints (375px min) ✓
- All images WebP with explicit width/height (no CLS) ✓
- robots.txt + sitemap with lastmod dates ✓
- Schema on all pages ✓
- HTTPS via GitHub Pages ✓
- Zero render-blocking JS ✓

### ❌ What's missing — Core Web Vitals
- **`hero-home.webp` is 568KB.** This is the #1 performance problem. At mobile 4G speeds, this alone can push LCP past 2.5s (Google's "Needs Improvement" threshold). Target: under 150KB. Fix: re-encode at quality 60–65 and/or create a 768px `srcset` mobile version.
- **`portland-maine-guide-hero.webp` is 345KB, `maine-activities-hero.webp` is 216KB.** Same issue, less severe.
- **No `<link rel="preload" as="image">` on any page.** The browser discovers hero images only after the CSS finishes loading. A preload hint starts the download immediately — direct LCP improvement.

### ❌ What's missing — Metadata
- `og:site_name` missing on all 4 pages
- `og:image:width` / `og:image:height` missing on all 4 pages
- Meta descriptions exceed 155 chars on 3 pages (homepage: 165, boat-cruise: 171, activities: 162)
- No explicit `<meta name="robots" content="index, follow">` on live pages (default is fine, but explicit is cleaner)

### ❌ What's missing — Schema gaps
- `ItemList` schema on `/maine-bachelorette-activities/` — 14 named activities are perfect candidates for a rich result list
- Individual `TouristAttraction` schema for key activities (Portland Head Light, Peaks Island, Eventide Oyster Co.)
- Homepage has no `BreadcrumbList` (acceptable for homepage, not required)

### To-do — Priority order
- [ ] **P0**: Recompress hero-home.webp and portland-maine-guide-hero.webp to under 150KB
- [ ] **P0**: Add `<link rel="preload" as="image" fetchpriority="high">` for hero on all 4 pages
- [ ] **P1**: Add `og:site_name`, `og:image:width`, `og:image:height` to all pages
- [ ] **P1**: Trim 3 meta descriptions to ≤150 chars
- [ ] **P2**: Add `ItemList` schema to activities page
- [ ] **P2**: Add `srcset` to hero images for mobile-appropriate file sizes

---

## 7. Backlinks Still Matter (Quality > Quantity)

**The principle:** A link from a real, relevant, authoritative site is worth more than 100 directory links. For a local travel booking site, the high-value links are: Maine tourism sites, wedding/bachelorette publications, travel blogs, and local news features.

### ✅ What's working
- N/A — no backlink data available (no GSC connected yet)

### ❌ What's missing
- **No Google Search Console connected.** Zero visibility into who links to the site, what queries it ranks for, or crawl errors. This is the first thing to set up before any other SEO work.
- **No Google Business Profile.** Local citation = backlink-equivalent for local SEO.
- **No presence on wedding/bachelorette platforms:** The Knot, Brides.com, Zola, WeddingWire are high-DA sites that could link to Portland bachelorette content. Guest posts, "best of" list inclusions, or vendor directory listings are all viable.
- **No Maine tourism citations.** VisitMaine.com, Greater Portland Visitors Bureau, Portland Press Herald travel section — these are the authority links that signal local relevance to Google.
- **No TripAdvisor or Yelp listing.** High-DA local citations that also drive direct traffic and EEAT signals.
- **No link-earning asset on the site.** The most linkable content is something genuinely useful that other sites want to reference: an interactive map of Old Port bars, a "cost calculator" for Maine bachelorette trips, a "from Boston" driving guide. The current pages are good, but they're not reference-worthy in a way that earns unprompted links.

### To-do
- [ ] **First**: Set up Google Search Console and submit sitemap
- [ ] Set up Google Business Profile (NAP matching footer exactly)
- [ ] Create TripAdvisor and Yelp listings for the charter service
- [ ] Reach out to 5–10 Maine travel bloggers for a "best bachelorette destinations in Maine" pitch
- [ ] Submit to The Knot / WeddingWire vendor directories
- [ ] Contact Greater Portland Visitors Bureau about inclusion in bachelorette planning resources
- [ ] Build one genuinely link-worthy resource: a "Maine Bachelorette Cost Calculator" or interactive weekend planner

---

## 8. AI + Entity SEO (New Layer)

**The principle:** Google's AI systems (and ChatGPT, Perplexity, etc.) answer queries by pulling from structured, entity-rich content. To be cited in AI overviews and survive the AI-summary layer, content must be factual, entity-specific, and structured enough for machines to parse confidently.

### ✅ What's working
- Named entities throughout: Casco Bay, Portland Head Light, James Beard Award, Chaval, The Ugly Duckling, Eventide Oyster Co., Peaks Island — all Wikipedia-notable, giving Google confidence in the content's factual grounding
- LocalBusiness + TouristAttraction schema with geo coordinates gives Google a machine-readable entity card for the site
- FAQ schema makes specific answers machine-extractable

### ❌ What's missing
- **The site is an anonymous entity.** Google's Knowledge Graph has no node for "Maine Bachelorette." An About page + Wikipedia-notable citations + consistent NAP across the web helps build this entity.
- **No `sameAs` links in schema.** `LocalBusiness` schema should include `"sameAs": ["https://www.facebook.com/...", "https://www.instagram.com/..."]` to link to social profiles — this helps Google merge the entity across platforms.
- **Article schema author is an Organization, not a Person.** AI systems prefer attributable human expertise. A named author with a `sameAs` to a real LinkedIn profile is more citable.
- **Individual activities aren't schema-typed.** The 14 activities on the activities page are plain HTML. Marking each as a `TouristAttraction` or `LodgingBusiness` (where applicable) makes them individually extractable for AI answers.
- **No `speakable` schema.** For voice search and AI assistant responses, `speakable` markup flags which parts of the page are good spoken answers.
- **Content isn't structured for AI extraction.** AI overviews pull from clearly structured, question-answer-formatted content. "What is the best bachelorette activity in Portland Maine?" should have a clear, direct answer in the first sentence, not buried in copy.

### To-do
- [ ] Add `sameAs` to LocalBusiness and TouristAttraction schema pointing to social profiles + any external listings
- [ ] Update Article schema author from Organization to `Person` with a name, bio, and `sameAs`
- [ ] Add `ItemList` + nested `TouristAttraction` schema to activities page for machine-extractability
- [ ] Structure key sections with direct Q→A format for AI extractability (first sentence = the answer)
- [ ] When blog launches: write at least one "answer-first" format post per target query

---

## 9. Content That Actually Helps

**The principle:** Google's Helpful Content system explicitly devalues content written "for search engines" and rewards content that leaves users satisfied, not hunting for more. The test: does a first-time visitor to mainebachelorette.com leave knowing what they need, or do they bounce back to Google?

### ✅ What's working
- Specific hotel recommendations with actual reasons to choose each — not generic lists
- Itinerary framework (Fri/Sat/Sun) gives brides a concrete starting point
- Travel distance info from Boston, NYC, Providence, Hartford — directly useful
- FAQ on boat-cruise page handles real pre-purchase questions
- Named restaurant/bar recommendations with context, not just names

### ❌ What's missing
- **No pricing anywhere.** Every bride's first question after "what is there to do" is "how much will this cost me." The site has a FareHarbor calendar widget but no visible price range. This is the single biggest helpfulness gap. Visitors who can't gauge budget bounce. (Note: even a ballpark like "charters from $X/person" satisfies intent without locking in pricing.)
- **No "what to expect" practical detail for the boat cruise.** What should I wear? Is there a bathroom on the boat? What happens if it rains? Can we bring our own alcohol? These are the questions brides Google before booking. They live in the FAQ but aren't surfaced as prominently as they should be.
- **No packing/logistics guide.** "What to bring on a Maine bachelorette weekend" is a searchable, helpful format that leads directly into the activities page and Portland guide.
- **Content depth is thin.** ~1,300–1,600 words per page. The Portland Guide is especially thin — the hotel section, bar section, and itinerary are each 2–3 sentences per item. Expanding to genuine depth (what neighborhood, what vibe, specific menu items, reservation tips) would both help users and give Google more content to evaluate.
- **No cost breakdown or budget planning.** "How much does a Portland Maine bachelorette weekend cost?" is a high-volume query. A realistic budget breakdown (flights, hotel, boat cruise, food, activities) would be genuinely helpful and naturally keyword-rich.
- **No weather or packing section.** "What is the weather like in Maine in June/July/August/September?" with actionable packing guidance is evergreen, helpful, and links naturally to the seasonal charter options.

### To-do
- [ ] Add visible price range to `/boat-cruise/` — even a starting price or "from $X per person" in the package cards
- [ ] Expand FAQ on boat-cruise: add "what to wear", "is there a bathroom", "what happens if it rains", "can we bring our own wine"
- [ ] Add a "What to Pack" or "Planning Your Trip" section to Portland Guide
- [ ] Add a realistic budget breakdown to Portland Guide ("A full Maine bachelorette weekend costs...")
- [ ] Expand each hotel and restaurant entry in Portland Guide from 2 sentences to a useful paragraph
- [ ] Add seasonal guidance block: what changes month to month, best window for each charter type

---

## Summary: Status by Pillar

| Pillar | Status | Biggest Gap |
|---|---|---|
| Search Intent | ⚠️ Partial | No pricing, no seasonal content, no comparison queries |
| Topical Authority | ⚠️ Thin | Blog dark, 4 pages is a thin cluster, content is short |
| EEAT | ❌ Weak | No About page, no author, anonymous site |
| CTR & Engagement | ⚠️ Partial | Meta descs are feature lists, missing og:site_name/dimensions |
| Internal Linking | ⚠️ Partial | Weak anchor text, no blog to link from |
| Technical SEO | ✅ Mostly good | 568KB hero image, no preload, meta desc length |
| Backlinks | ❌ Unknown | No GSC, no GBP, no citations, no link-earning asset |
| AI + Entity SEO | ⚠️ Partial | Anonymous entity, no sameAs, no per-activity schema |
| Helpful Content | ⚠️ Partial | No pricing, thin depth, missing logistics/planning content |

**Top 5 moves by impact:**
1. Connect Google Search Console — you're flying blind without it
2. Add an About page — single biggest EEAT unlock
3. Add pricing to `/boat-cruise/` — highest-intent content gap, reduces bounce
4. Recompress `hero-home.webp` + add preload link — Core Web Vitals = ranking signal
5. Launch the blog with 4 posts — topical authority, backlink targets, internal link sources
