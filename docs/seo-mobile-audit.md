# SEO + Mobile Audit
## mainebachelorette.com — June 2026

---

## What's Already Good ✓
- All images: WebP, width/height attrs, alt text, lazy loading, fetchpriority on heroes ✓
- All pages: canonical, OG tags, Twitter Card, geo tags (4×), favicon, apple-touch-icon, theme-color, GSC comment ✓
- All pages: 1 H1, internal link to /boat-cruise/ ✓
- Sitemap: all 4 pages present, blog excluded correctly ✓
- Copyright: all pages show 2026 ✓
- overflow-x hidden on html + body ✓
- Hamburger: 48×48px touch target ✓
- Section-v steps down: 100px → 72px (768px) → 56px (480px) ✓
- Hero CTAs: full-width at 480px ✓
- Footer rebuilt as 3×2 CSS grid (brand name / Experiences / Guides in row 1; tagline+address / links / links in row 2) ✓
- All 6 real Google reviews added to homepage testimonials with years ✓
- Bar/restaurant recs updated to 2026-current sources ✓
- Nav updated: Reviews replaced with Activities linking to /maine-bachelorette-activities/ ✓
- Copyright updated to 2026 site-wide ✓

---

## Priority 1 — Critical SEO Fixes

### 1. Title tags over 50–60 char limit
| Page | Current | Chars |
|---|---|---|
| Homepage | Maine Bachelorette Party Ideas & Experiences \| mainebachelorette.com | 68 |
| Boat cruise | Bachelorette Boat Cruise Portland Maine \| Private Charter on Casco Bay | 70 |
| Portland guide | Portland Maine Bachelorette Weekend Guide 2026 \| Where to Stay, Eat & Party | 75 |
| Activities | Maine Bachelorette Party Activities \| 9 Unique Ideas in Portland Maine | 69 |

Fix: trim `<title>` tags to 50–60 chars. OG/Twitter titles can stay longer.

### 2. Meta descriptions over 150–160 char limit
| Page | Chars | Status |
|---|---|---|
| Homepage | 188 | Over by 28 |
| Boat cruise | 198 | Over by 38 |
| Activities | 181 | Over by 21 |
| Portland guide | 157 | ✓ |

Fix: trim to 155 chars max, keep primary keyword near front.

### 3. Portland Guide year says "2025"
`<title>`, `og:title`, `twitter:title` all say "2025". Update to 2026.
**File:** `portland-maine-guide/index.html`

### 4. Schema dateModified outdated
`"dateModified": "2025-06-01"` on activities and portland guide pages. Update to `"2026-06-13"`.
**Files:** `portland-maine-guide/index.html`, `maine-bachelorette-activities/index.html`

### 5. robots.txt — unverified
No mention of `robots.txt` in the repo. Without it Google may crawl unpredictably (e.g. hit /blog/ despite noindex). Confirm file exists at root with:
```
User-agent: *
Allow: /
Disallow: /blog/
Sitemap: https://mainebachelorette.com/sitemap.xml
```

### 6. og:image dimensions
OG images should be exactly 1200×630px for correct rendering in link previews (Facebook, iMessage, Slack). Current convert script outputs at arbitrary sizes. Audit and regenerate OG images at 1200×630.
**Files:** `scripts/convert-images.sh`, all `og-*.webp` in `images/`

### 7. NAP phone number — accepted gap
Phone intentionally removed (white-label positioning). Address-only is acceptable — NAP phone matters mainly for Google Business Profile / local pack, which this site doesn't have. No action needed.

---

## Priority 2 — Mobile Fixes

### 8. Mobile menu close button missing 48px touch target
`.mobile-menu-close` has no `min-width`/`min-height`. Add `min-width: 48px; min-height: 48px;` to `css/styles.css`.

### 9. Boat-cruise package CTAs not full-width at 480px
The global 480px `.btn` rule only covers hero actions. Package card CTAs need `.packages-grid .btn { width: 100%; text-align: center; }` at 480px.
**File:** `boat-cruise/styles.css`

### 10. Footer mobile stacking order
With the new 3×2 grid, at 480px (1-col) the 6 cells stack as: brand-name → Experiences h4 → Guides h4 → brand-body → experience links → guides links. This is wrong — headings separated from their links. Fix with explicit `grid-row` placement or restructure mobile to 2-col (brand spans full width, nav cols side by side).

### 11. Minimum body font size 16px
iOS Safari auto-zooms on any input/tap if font-size < 16px. Audit all `.footer-brand-body p`, `.footer-col-links li a`, eyebrow text, and card body copy — anything under 16px needs a mobile override.

### 12. Activity card grid on mobile
Verify activity cards stack to single column at 480px with sufficient image height and readable text. Check image aspect ratios don't crush on small viewports.

---

## Priority 3 — SEO Power-ups

### 13. AggregateRating schema on homepage
6 real 5-star reviews on the homepage. Add to TouristAttraction schema:
```json
"aggregateRating": { "@type": "AggregateRating", "ratingValue": "5", "reviewCount": "6" }
```
**File:** `index.html`

### 14. Review schema on homepage
Add `Review` JSON-LD objects for the 6 testimonials. Enables star-snippet eligibility in search results.
**File:** `index.html`

### 15. LocalBusiness schema on homepage
`TouristAttraction` is good but `LocalBusiness` (or `TouristInformationCenter`) is more powerful for local pack ranking. Add a second `@type` array or separate graph node with name, url, address, image, priceRange, areaServed.
**File:** `index.html`

### 16. FAQPage schema on Portland Guide
Page answers common questions (how to get there, where to stay, best bars). FAQPage schema earns rich result accordion snippets in Google.
**File:** `portland-maine-guide/index.html`

### 17. City-targeting copy audit
"bachelorette trip from Boston", "Maine bachelorette from NYC", "bachelorette weekend from Providence" need to appear naturally in at least one page body. These are high-intent keyword clusters. Homepage and Portland Guide are the right places.

### 18. h2/h3 keyword density audit
Section headings like "The Experience", "Why Maine", "Choose Your Charter" don't contain target keywords. Swap generic headings for keyword-rich variants: "Private Bachelorette Boat Cruise on Casco Bay", "Why Maine Is the Best Bachelorette Destination", etc.

### 19. Outbound links on Activities page
Links to third-party businesses (kayak rentals, restaurants, spas) should have `rel="noopener noreferrer"` for security. Consider whether `rel="nofollow"` is appropriate for commercial referrals.

### 20. Sitemap: add lastmod dates
No `<lastmod>` tags exist. Adding them signals to Google which pages have fresh content.
**File:** `sitemap.xml`

### 21. Update CLAUDE.md nav labels
CLAUDE.md still says nav is "Boat Cruise / Portland Guide / Reviews / Book Now" — site now has Activities instead of Reviews.
**File:** `CLAUDE.md`

---

## Execution Order
1. **P1 quick wins** — items 3, 4 (date/year fixes, 5 min)
2. **P1 title + meta** — items 1, 2 (all 4 pages, one pass)
3. **P1 infra** — items 5, 6 (robots.txt creation, OG image resize)
4. **P2 mobile** — items 8–12 (CSS fixes, low risk)
5. **P3 schema** — items 13–16 (JSON-LD additions)
6. **P3 content** — items 17, 18 (copy edits)
7. **P3 cleanup** — items 19–21 (links, sitemap, CLAUDE.md)

## Verification
- `python3 -m http.server 8000` → test each page at 375px in DevTools
- Google Rich Results Test for schema (aggregateRating, FAQPage, Review)
- Confirm no title > 60 chars after edits
- Check footer stacking at 375px / 480px / 768px
- Validate og:image renders correctly at 1200×630 in a link preview tool
- Check robots.txt at `http://localhost:8000/robots.txt`
