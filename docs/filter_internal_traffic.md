# GA4 Internal Traffic Filtering — mainebachelorette.com

**Status:** Planned
**Stack:** Static HTML/CSS/JS, no build step, gtag.js inline on every page (`G-39ZPH9LR93`)

---

## Why

GA4's built-in Internal Traffic filter normally matches on IP address. That breaks down here because traffic comes from home Wi-Fi, coffee shops, cellular, and possibly a VPN — the IP changes constantly. Instead we tag the *browser* as internal via a URL parameter stored in `localStorage`, and pass that flag to GA4 as `traffic_type: internal` on every `gtag('config', ...)` call. GA4's Internal Traffic data filter then excludes those hits from reports.

No server, no middleware, no cookies needed — this is a static site, so `localStorage` is sufficient and simplest.

---

## Part 1 — Code changes (Claude will do this)

1. Create `/js/ga-internal.js`:
   ```js
   (function () {
     var params = new URLSearchParams(window.location.search);
     if (params.get('internal') === 'true') localStorage.setItem('internal_traffic', 'true');
     if (params.get('internal') === 'false') localStorage.removeItem('internal_traffic');

     var isInternal = localStorage.getItem('internal_traffic') === 'true';
     gtag('config', 'G-39ZPH9LR93', isInternal ? { traffic_type: 'internal' } : {});
   })();
   ```

2. On every page that currently has:
   ```html
   gtag('config', 'G-39ZPH9LR93');
   ```
   replace that line with a reference to the shared script:
   ```html
   <script src="/js/ga-internal.js"></script>
   ```

3. Pages to update (all pages with the gtag snippet):
   - `index.html`
   - `boat-cruise/index.html`
   - `maine-bachelorette-activities/index.html`
   - `portland-maine-guide/index.html`
   - `about/index.html`
   - `404.html`

4. Verify no page double-fires `gtag('config', ...)` (i.e. the inline call is fully replaced, not duplicated).

---

## Part 2 — Steps you need to do yourself in GA4

These require access to the GA4 Admin UI under your Google account and can't be done from the codebase.

### Step 1: Create the Data Filter (but don't activate yet)

Skip GA4's native "Define Internal Traffic" rule (Data Streams → Configure Tag Settings) — that UI only supports matching on IP address, not custom parameters. We don't need it: our script already sets `traffic_type: 'internal'` directly via `gtag()`, and GA4's Internal Traffic filter type checks for that exact parameter value regardless of how it was set (IP rule, GTM, or manual gtag call).
1. Go to **Admin** → **Data Settings** → **Data Filters**.
2. Click **Create Filter** → **Internal Traffic**.
3. Filter name: `Internal Traffic`
4. Filter operation: **Exclude**
5. **Leave filter state set to "Testing"** — do not set to Active yet.
6. Save.

### Step 2: Test before activating
1. Visit `https://mainebachelorette.com/?internal=true` once.
2. Open GA4 → **Admin** → **DebugView** (or **Reports** → **Realtime**).
3. Confirm your hits show `traffic_type = internal` in DebugView, and show as "Internal" in Realtime.
4. Click through a few pages on the site and confirm every event keeps the `internal` tag (it's stored in `localStorage`, so it should persist across pages/sessions automatically).

### Step 3: Activate the filter
1. Once you've confirmed Testing mode is correctly tagging your visits, go back to **Data Filters** → `Internal Traffic` → change state to **Active**.
2. From this point on, your own visits will stop appearing in standard GA4 reports.

### Step 4: Enable it on each of your devices/browsers
`localStorage` is per-browser, so you need to visit the enable URL once on each:
- [ ] Mac Mini — Chrome
- [ ] Mac Mini — Safari
- [ ] MacBook — Chrome
- [ ] MacBook — Safari
- [ ] iPhone — Safari
- [ ] iPhone — Chrome (if used)

Visit:
```
https://mainebachelorette.com/?internal=true
```
on each, once. No further action needed afterward.

---

## Reset / disable

If GA4 data ever looks like it's missing your own traffic unexpectedly, or you want to see the site as a real visitor would:
```
https://mainebachelorette.com/?internal=false
```
or manually in the browser console:
```js
localStorage.removeItem('internal_traffic');
```

---

## Notes

- This is **not** a security feature — anyone could manually flip the flag. It only affects analytics reporting, grants no access, and exposes no data.
- No middleware/cookie/SSR approach is needed since this site has no server runtime — `localStorage` + the URL param is the correct fit for a static GitHub Pages site.
