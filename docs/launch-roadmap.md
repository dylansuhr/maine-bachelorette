# Launch Roadmap

## Status: Pre-launch

---

## 1. Content & Code

- [ ] Replace all placeholder images (picsum.photos) with real WebP photos
  - `images/hero-home.webp`
  - `images/hero-boat-cruise.webp`
  - `images/portland-maine-guide-hero.webp`
  - `images/maine-activities-hero.webp`
  - Gallery images (5 per page)
  - Blog card images
  - `images/og-home.webp`, `og-boat-cruise.webp`, `og-portland-guide.webp`, `og-activities.webp`, `og-blog.webp` (1200×630 each for social sharing)
- [ ] Add FareHarbor booking widget to `boat-cruise/index.html` in the `#book` section
- [ ] Replace booking widget placeholder phone/email with live FareHarbor embed script
- [ ] Create `apple-touch-icon.png` (180×180px, navy background, gold "mb")
- [ ] Review all copy — especially testimonials (replace placeholders with real reviews)
- [ ] Add real Instagram, TripAdvisor, Facebook URLs to all footer social links

---

## 2. GitHub Pages Setup

- [ ] Push repo to GitHub
- [ ] Repo Settings → Pages → Source: `main` branch, root `/`
- [ ] Confirm `CNAME` file contains `mainebachelorette.com` ✓ (already done)
- [ ] Enable "Enforce HTTPS" in GitHub Pages settings (appears after DNS propagates)

---

## 3. DNS Setup (at domain registrar)

Add these records pointing to GitHub Pages:

```
Type    Host    Value
A       @       185.199.108.153
A       @       185.199.109.153
A       @       185.199.110.153
A       @       185.199.111.153
CNAME   www     yourgithubusername.github.io
```

> DNS TXT record for Google Search Console already added ✓

Allow 10–30 minutes for propagation. Check status at whatsmydns.net.

---

## 4. Google Search Console

- [x] Property added: `mainebachelorette.com` (Domain property)
- [x] Verified via DNS TXT record
- [ ] **Submit sitemap** — GSC → Sitemaps → enter `sitemap.xml` → Submit
- [ ] **Request indexing** on money pages (do after site is live):
  - GSC → URL Inspection → `https://mainebachelorette.com/` → Request Indexing
  - GSC → URL Inspection → `https://mainebachelorette.com/boat-cruise/` → Request Indexing
- [ ] Check Coverage report for any crawl errors after first 48 hours
- [ ] Verify sitemap shows all 5 pages processed with no errors

---

## 5. Post-Launch SEO Checklist

- [ ] Confirm canonical URLs resolve correctly (no redirect loops)
- [ ] Test all pages in Google's Rich Results Test (schema validation)
- [ ] Run PageSpeed Insights on homepage and boat cruise page — target 90+ mobile
- [ ] Confirm Open Graph images render correctly (use opengraph.xyz to preview)
- [ ] Submit to Google Business Profile if not already listed
- [ ] List on TripAdvisor if not already
- [ ] Set up Google Analytics (GA4) — add tracking snippet to all pages

---

## 6. Content Pipeline (post-launch)

Blog posts to write for topical authority — in priority order:

1. "The Ultimate Portland Maine Bachelorette Weekend Itinerary" → `/portland-maine-guide/` ✓
2. "What to Expect on a Maine Bachelorette Boat Cruise" → `/boat-cruise/` ✓
3. "Maine vs Nashville: The Bachelorette Showdown" → `/blog/maine-vs-nashville/`
4. "The Best Bachelorette Trip from Boston: Portland Maine" → `/blog/boston-bachelorette-trip/`
5. "What to Pack for a Maine Bachelorette Weekend" → `/blog/packing-list/`
6. "Maine Bachelorette Party on a Budget" → `/blog/maine-bachelorette-budget/`
7. "Best Time of Year for a Maine Bachelorette Party" → `/blog/best-time-to-visit/`

Each post should: target a long-tail keyword in H1, include 600+ words, link back to `/boat-cruise/`.
