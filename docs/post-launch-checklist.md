# Post-Launch SEO Checklist — mainebachelorette.com
*Complete in order. Day 1 items matter most — they determine how fast Google finds and indexes the site.*

---

## Day 1 — Get Google Looking

### Google Search Console
- [ ] Submit sitemap: GSC → Sitemaps → `https://mainebachelorette.com/sitemap.xml` → Submit
- [ ] Request indexing on all 4 live pages via URL Inspection tool:
  - `https://mainebachelorette.com/`
  - `https://mainebachelorette.com/boat-cruise/`
  - `https://mainebachelorette.com/portland-maine-guide/`
  - `https://mainebachelorette.com/maine-bachelorette-activities/`
- [ ] Confirm Coverage report shows 0 errors and all pages as "Valid"
- [ ] Confirm `/blog/` is excluded (noindex) — should not appear in Valid pages

### Google Analytics
- [ ] Verify GA4 is receiving hits: Realtime → visit the site yourself and confirm sessions appear
- [ ] Confirm all 4 pages fire pageview events correctly
- [ ] Set up a Conversion event for FareHarbor clicks:
  - In GA4 → Events → mark `click` events to/from `fareharbor.com` as conversions
  - Or use GTM to fire a custom `book_now_click` event on all FareHarbor links
- [ ] Create an Audience: users who clicked a FareHarbor link (for future remarketing)

### Rich Results Test
- [ ] Run each page through Google's Rich Results Test: https://search.google.com/test/rich-results
  - Homepage: should show LocalBusiness + AggregateRating
  - Boat cruise: should show FAQPage (expandable FAQ in search results)
  - Portland Guide: should show FAQPage
  - Activities: should show ItemList
- [ ] Fix any schema warnings before they become crawl errors

---

## Week 1 — Validate and Establish Baselines

### Search Console
- [ ] Check Index Coverage daily for the first week — catch any crawl errors early
- [ ] Verify all 4 pages show status "URL is on Google" in URL Inspection within 3–5 days of requesting indexing
- [ ] Check that `/about/` is indexed (submitted in sitemap at priority 0.4)

### PageSpeed Insights
- [ ] Run all 4 pages through PageSpeed Insights: https://pagespeed.web.dev
  - Run on **Mobile** tab (not desktop — Google uses mobile-first)
  - Target: LCP under 2.5s, CLS under 0.1, INP under 200ms
  - The hero image compression and preload links should move LCP significantly
- [ ] Screenshot baseline scores to track improvement over time

### Social / Sharing Validation
- [ ] Test OG tags on Facebook Sharing Debugger: https://developers.facebook.com/tools/debug/
  - Paste each page URL → confirm image, title, description render correctly
  - Hit "Scrape Again" if cached from a pre-launch crawl
- [ ] Test Twitter/X card: https://cards-dev.twitter.com/validator (or just paste a URL in a tweet draft)
- [ ] Test iMessage/WhatsApp preview by texting yourself each URL — this is how brides actually share planning links

---

## Week 2–4 — First Data, First Optimizations

### Search Console — Queries Report
- [ ] GSC → Performance → Queries: note which queries are generating impressions (even before clicks)
- [ ] Look for queries where you rank position 8–20 — these are the quickest wins to push to page 1
- [ ] Look for queries with high impressions but low CTR — title/description may need rewriting
- [ ] Set date range to last 28 days and export as baseline for month-over-month tracking

### Search Console — Core Web Vitals Report
- [ ] GSC → Experience → Core Web Vitals → Mobile
- [ ] Confirm pages show "Good" (green) for LCP, CLS, INP
- [ ] Any "Needs Improvement" or "Poor" pages — investigate with PageSpeed Insights

### Google Analytics — Behavior
- [ ] Pages → find which page gets the most organic traffic
- [ ] Engagement rate by page — anything under 50% engagement is a bounce problem
- [ ] Average session duration: should be 1:30+ for guide pages, 2:00+ for boat-cruise
- [ ] Scroll depth (if enabled): are users reaching the FareHarbor widget on `/boat-cruise/`?

---

## Month 1 — Local SEO and Citations

### Google Business Profile
- [ ] Create a Google Business Profile at: https://business.google.com
- [ ] Business name: **Maine Bachelorette**
- [ ] Category: **Tour Operator** (primary) + Boat Tour Agency
- [ ] Address: Downtown Portland's Old Port, Portland, ME 04101
- [ ] Phone: match exactly what's in footer/schema
- [ ] Website: `https://mainebachelorette.com`
- [ ] Add photos: boat, Casco Bay, bachelorette groups (pull from existing site images)
- [ ] Write a business description using primary keywords
- [ ] Once verified, this unlocks the map pack — huge for local "bachelorette in Portland Maine" searches

### Directory Listings (high-DA citations)
- [ ] TripAdvisor: create a listing for the charter experience
- [ ] Yelp: create a listing — matches NAP exactly
- [ ] The Knot Vendor Directory: submit as a bachelorette experience vendor
- [ ] WeddingWire: same as The Knot (they're owned by the same company — one submission covers both)
- [ ] Visit Portland ME (visitportland.com): submit for their activities/experiences directory
- [ ] Maine Office of Tourism (visitmaine.com): submit for their things-to-do section

**NAP to use on every listing — must match exactly:**
```
Maine Bachelorette
Downtown Portland's Old Port, Portland, ME 04101
mainebachelorette.com
```

---

## Month 1–2 — Schema Verification and Tuning

### After First GSC Data Comes In
- [ ] GSC → Enhancements: check for FAQPage and Sitelinks Searchbox errors
- [ ] GSC → Rich results: confirm FAQ snippets are appearing in search results for boat-cruise queries
- [ ] If AggregateRating isn't showing stars in SERPs: verify schema with Rich Results Test and resubmit URL for indexing
- [ ] Update `dateModified` in Article schema whenever you make content changes to guide/activities pages

---

## Ongoing — Monthly Maintenance

### Every Month
- [ ] GSC Performance: compare impressions and clicks month-over-month
- [ ] GSC Coverage: zero crawl errors maintained
- [ ] PageSpeed: re-run if you've added new images or changed page structure
- [ ] Check for new queries in the 8–20 position range to target
- [ ] Update `sitemap.xml` lastmod dates when pages are meaningfully updated

### Every Quarter
- [ ] Run all pages through Rich Results Test again — Google updates schema requirements
- [ ] Audit internal links: every page should link to `/boat-cruise/` with keyword-rich anchor text
- [ ] Review meta descriptions against actual click-through rates in GSC — rewrite any with CTR under 2%
- [ ] Check competitor rankings for your top 5 target queries — adjust content strategy accordingly

---

## When the Blog Launches

- [ ] Uncomment blog from `robots.txt` (remove `Disallow: /blog/`)
- [ ] Change blog `index.html` meta robots from `noindex, nofollow` to `index, follow`
- [ ] Add blog to `sitemap.xml` with each post as its own `<url>` entry
- [ ] Add "Bach Blog" back to nav (CLAUDE.md notes this as deferred)
- [ ] Submit blog index + first posts via GSC URL Inspection
- [ ] Each post must include at least 1 internal link to `/boat-cruise/` with keyword-rich anchor text

---

## Tools Reference

| Tool | URL | Use |
|---|---|---|
| Google Search Console | search.google.com/search-console | Rankings, indexing, crawl errors |
| Google Analytics 4 | analytics.google.com | Traffic, conversions, behavior |
| PageSpeed Insights | pagespeed.web.dev | Core Web Vitals by page |
| Rich Results Test | search.google.com/test/rich-results | Schema validation |
| FB Sharing Debugger | developers.facebook.com/tools/debug | OG tag preview |
| Google Business Profile | business.google.com | Local map pack |
| Schema Markup Validator | validator.schema.org | Full schema audit |
