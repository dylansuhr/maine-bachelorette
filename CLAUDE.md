# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## North Star: Every decision must maximize SEO

This is the primary directive for all work on this project. Page structure, copy, image handling, URL design, metadata, schema markup, internal linking — everything is evaluated first through the lens of search performance.

## What this site is

`mainebachelorette.com` is a static HTML site and SEO-focused content hub targeting bachelorette groups planning trips to Maine. It white-labels large group charter offerings from Casco Bay Custom Charters (cascobaycustomcharters.com). CBCC is only mentioned in the context of the FareHarbor booking widget — the site presents as an independent Maine bachelorette party resource.

**Conversion funnel:** All roads lead to the FareHarbor booking widget (CBCC's existing system).

## Stack

- Pure static HTML/CSS — no build step, no framework
- Hosted on GitHub Pages with custom domain `mainebachelorette.com`
- Google Fonts: Cormorant Garamond (headlines) + Montserrat (body/UI)

## Development

Open any `.html` file directly in a browser, or use a local server:

```bash
python3 -m http.server 8000
```

No build, lint, or test commands — what you see is what ships.

## Mobile-first is non-negotiable

This audience — brides and their friend groups — plans almost entirely on their phones. Google also uses mobile-first indexing, so mobile performance directly impacts rankings.

**Every page must:**
- Be tested at 375px width (iPhone SE) as the minimum viewport
- Have `overflow-x: hidden` on `html` and `body` to prevent horizontal scroll
- Use touch targets of minimum 48px height/width on all interactive elements (buttons, nav links, hamburger)
- Reduce padding/spacing progressively: `--section-v` steps down at 768px → 56px at 480px
- Stack all multi-column grids to single column at 480px
- Make CTAs full-width at 480px
- Never rely on `:hover` for critical interactions (mobile has no hover)

**Breakpoints in use:**
- `1024px` — tablet: 2-col grids, featured sections reflow
- `768px` — mobile: hamburger nav, single-col content, reduced spacing
- `480px` — small mobile: further padding reduction, full-width buttons

## SEO requirements (non-negotiable)

Every one of these must be present on every page before it ships. No exceptions.

### Per-page checklist

- [ ] Unique, keyword-rich `<title>` (50–60 chars) and `<meta name="description">` (150–160 chars)
- [ ] `<link rel="canonical">` pointing to the page's own URL
- [ ] One `<h1>` per page containing the primary keyword
- [ ] Open Graph tags: `og:type`, `og:url`, `og:title`, `og:description`, `og:image`
- [ ] Twitter Card tags: `twitter:card`, `twitter:title`, `twitter:description`, `twitter:image`
- [ ] Schema markup — minimum `BreadcrumbList` on all interior pages; add `TouristAttraction`, `FAQPage`, `Article`, `Event` where relevant
- [ ] Geo meta tags on every page:
  ```html
  <meta name="geo.region" content="US-ME">
  <meta name="geo.placename" content="Portland, Maine">
  <meta name="geo.position" content="43.6591;-70.2568">
  <meta name="ICBM" content="43.6591, -70.2568">
  ```
- [ ] Favicon reference: `<link rel="icon" type="image/svg+xml" href="/favicon.svg">`
- [ ] Apple touch icon: `<link rel="apple-touch-icon" href="/apple-touch-icon.png">`
- [ ] Theme color: `<meta name="theme-color" content="#2C3E6B">`
- [ ] GSC verification placeholder comment
- [ ] NAP (Name/Address/Phone) as visible `<address>` HTML in footer — not just schema
- [ ] Internal links to at least one other page, always including a link to `/boat-cruise/`
- [ ] `sitemap.xml` updated when the page is added

### Images (every image on every page)

- [ ] WebP format, descriptive filename (`bachelorette-boat-cruise-portland-maine.webp`)
- [ ] Explicit `width` and `height` attributes (prevents CLS)
- [ ] Keyword-rich `alt` text
- [ ] `loading="lazy"` on all images below the fold
- [ ] Hero/LCP image: use `<img>` tag (never CSS `background-image`), add `fetchpriority="high"` and `decoding="async"`

### URL structure

- Lowercase, hyphenated, keyword-rich
- Use directory-style URLs (`/boat-cruise/`) not file-style (`/boat-cruise.html`) for clean paths on GitHub Pages
- Every linked URL must resolve to a real page — no dead internal links

## Design system

```
--navy:       #2C3E6B
--gold:       #C5A572
--blush:      #F4DFE8
--background: #FDFAF7
--text:       #1A1A1A
```

Aesthetic: "Coastal Celebration" — sophisticated, editorial, image-heavy. No hot pink, no clipart. Premium Maine experience.

## Site structure

### Live pages (4)
- `/` — Homepage
- `/boat-cruise/` — Money page, FareHarbor booking funnel
- `/portland-maine-guide/` — Weekend itinerary guide
- `/maine-bachelorette-activities/` — Activities hub

### Deferred pages
- `/blog/` — "Bach Blog" index is built but hidden: `noindex,nofollow`, excluded from nav and sitemap. Re-enable when blog post content is ready. See `docs/launch-roadmap.md` for re-enable steps.

### Nav link labels (current)
Boat Cruise / Portland Guide / Reviews / Book Now
*(Bach Blog removed until blog is ready to launch)*

---

## Content strategy

The site is both a booking funnel and a topical authority hub. Blog/guide content targets long-tail keywords ("best bachelorette activities Portland Maine", "Maine bachelorette weekend itinerary") and links internally to money pages. Money pages drive FareHarbor bookings.

**City-targeting:** Copy should naturally reference nearby origin cities (Boston, NYC, Providence, Hartford) since brides search "bachelorette trip from Boston" etc.
