# Launch Roadmap

## Status: Pre-launch

---

## 1. Content & Code

- [ ] Replace all placeholder images with real WebP photos
  - `images/hero-home.webp` ← started (1 converted)
  - `images/hero-boat-cruise.webp`
  - `images/portland-maine-guide-hero.webp`
  - `images/maine-activities-hero.webp`
  - `images/featured-boat-cruise.webp`
  - `images/boat-marie-l.webp`
  - `images/casco-islands.webp`
  - `images/culinary-partnership.webp`
  - Package images: `package-mimosa-brunch.webp`, `package-sunset-charter.webp`, `package-sightseeing.webp`, `package-fall-foliage.webp`
  - Homepage gallery: `gallery-1.webp` – `gallery-5.webp`
  - Cruise gallery: `cruise-gallery-1.webp` – `cruise-gallery-5.webp`
  - Why Maine: `why-maine-coast.webp`, `why-maine-food.webp`, `why-maine-boat-group.webp`
  - Guide cards: `guide-portland-weekend.webp`, `guide-boat-cruise.webp`, `guide-activities.webp`
  - Activities: `activity-boat-cruise.webp`
  - OG images (1200×630): `og-home.webp`, `og-boat-cruise.webp`, `og-portland-guide.webp`, `og-activities.webp`
  - CTA background: `cta-bg.webp`
- [ ] Add FareHarbor booking widget to `boat-cruise/index.html` → `#book` section
- [ ] Create `apple-touch-icon.png` (180×180px, navy background, gold "mb")
- [ ] Replace placeholder testimonials with real reviews
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
- [ ] Verify sitemap shows all 4 live pages processed with no errors

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

## 6. Bach Blog (deferred — do not launch with site)

`/blog/` is built but hidden: `noindex,nofollow`, removed from nav and sitemap.

**To re-enable when ready:**
1. Remove `<meta name="robots" content="noindex, nofollow">` from `blog/index.html`
2. Re-add nav link `<li><a href="/blog/">Bach Blog</a></li>` to all pages
3. Re-add footer link `<li><a href="/blog/">Bach Blog</a></li>` to all pages
4. Add blog entry back to `sitemap.xml`

**Blog images still needed (before re-enabling):**
- `blog-portland-weekend.webp`, `blog-boat-cruise-guide.webp`, `blog-activities.webp`
- `blog-packing.webp`, `blog-vs-nashville.webp`, `blog-culinary-partnership.webp`, `blog-boston-bachelorette.webp`
- `og-blog.webp` (1200×630)

**Blog posts to write — in priority order:**
1. "Maine vs Nashville: The Bachelorette Showdown" → `/blog/maine-vs-nashville/`
2. "The Best Bachelorette Trip from Boston: Portland Maine" → `/blog/boston-bachelorette-trip/`
3. "What to Pack for a Maine Bachelorette Weekend" → `/blog/packing-list/`
4. "Maine Bachelorette Party on a Budget" → `/blog/maine-bachelorette-budget/`
5. "Best Time of Year for a Maine Bachelorette Party" → `/blog/best-time-to-visit/`

Each post: target a long-tail keyword in H1, 600+ words, link back to `/boat-cruise/`.
