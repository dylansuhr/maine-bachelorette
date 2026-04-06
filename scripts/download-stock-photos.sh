#!/bin/bash
# download-stock-photos.sh
# Downloads free Wikimedia Commons stock photos relevant to each image slot.
# All images are public domain or freely licensed.
# Run: bash scripts/download-stock-photos.sh
# Then run: bash scripts/convert-images.sh  (resizes + converts to WebP)

set -e

RAW="raw"
mkdir -p "$RAW"

dl() {
  local name=$1
  local url=$2
  local ext="${url##*.}"
  ext="${ext%%\?*}"
  # Normalize extension
  ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')
  [ "$ext" = "jpeg" ] && ext="jpg"
  local out="${RAW}/${name}.${ext}"
  if [ -f "$out" ]; then
    echo "  – ${name}.${ext} already exists, skipping"
    return
  fi
  echo "  ↓ ${name}.${ext}"
  curl -sL --max-time 30 "$url" -o "$out"
}

echo "Downloading stock photos from Wikimedia Commons..."
echo "(All photos are public domain / freely licensed)"
echo ""

# ── Heroes ─────────────────────────────────────────────────────────
echo "Heroes:"
dl "hero-home" \
  "https://upload.wikimedia.org/wikipedia/commons/e/ed/Portland_Harbor_-_Portland%2C_Maine%2C_USA_-_September_28%2C_2023.jpg"
dl "hero-boat-cruise" \
  "https://upload.wikimedia.org/wikipedia/commons/6/6c/Casco_Bay_092108_120.jpg"
dl "portland-maine-guide-hero" \
  "https://upload.wikimedia.org/wikipedia/commons/8/83/Old_Port_%28Portland%2C_Maine%29_-_IMG_8081.JPG"
dl "maine-activities-hero" \
  "https://upload.wikimedia.org/wikipedia/commons/f/f2/Coast_near_the_Portland_Head_Lighthouse_%2834780000291%29.jpg"

# ── Homepage ────────────────────────────────────────────────────────
echo ""
echo "Homepage:"
dl "why-maine-coast" \
  "https://upload.wikimedia.org/wikipedia/commons/f/f2/Coast_near_the_Portland_Head_Lighthouse_%2834780000291%29.jpg"
dl "why-maine-food" \
  "https://upload.wikimedia.org/wikipedia/commons/f/f3/Maine_Style_Lobster_Roll.jpg"
dl "why-maine-boat-group" \
  "https://upload.wikimedia.org/wikipedia/commons/c/c0/Casco_Bay_092108_140.jpg"
dl "featured-boat-cruise" \
  "https://upload.wikimedia.org/wikipedia/commons/0/08/Casco_Bay_092108_163.jpg"
dl "gallery-1" \
  "https://upload.wikimedia.org/wikipedia/commons/b/bf/Portland_Harbor_-_Portland%2C_Maine%2C_USA_-_September_28%2C_2023_01.jpg"
dl "gallery-2" \
  "https://upload.wikimedia.org/wikipedia/commons/6/61/Casco_Bay_092108_154.jpg"
dl "gallery-3" \
  "https://upload.wikimedia.org/wikipedia/commons/7/76/Old_Port_%28Portland%2C_Maine%29_-_IMG_8087.JPG"
dl "gallery-4" \
  "https://upload.wikimedia.org/wikipedia/commons/f/ff/Portland_old_port_3.jpg"
dl "gallery-5" \
  "https://upload.wikimedia.org/wikipedia/commons/d/d9/Casco_Bay_092108_138.jpg"
dl "guide-portland-weekend" \
  "https://upload.wikimedia.org/wikipedia/commons/9/9c/Old_Port_area_of_Portland%2C_ME.jpg"
dl "guide-boat-cruise" \
  "https://upload.wikimedia.org/wikipedia/commons/d/d6/Casco_Bay_092108_150.jpg"
dl "guide-activities" \
  "https://upload.wikimedia.org/wikipedia/commons/e/ef/Casco_Bay_092108_175.jpg"
dl "cta-bg" \
  "https://upload.wikimedia.org/wikipedia/commons/1/1a/Casco_Bay_092108_118.jpg"

# ── Boat Cruise Page ────────────────────────────────────────────────
echo ""
echo "Boat Cruise Page:"
dl "boat-marie-l" \
  "https://upload.wikimedia.org/wikipedia/commons/d/d6/Casco_Bay_092108_132.jpg"
dl "casco-islands" \
  "https://upload.wikimedia.org/wikipedia/commons/4/4c/Casco_Bay_092108_128.jpg"
dl "package-mimosa-brunch" \
  "https://upload.wikimedia.org/wikipedia/commons/d/d4/Five_Islands_Lobster_Co._%2827274453873%29.jpg"
dl "package-sunset-charter" \
  "https://upload.wikimedia.org/wikipedia/commons/4/4b/Sailing_at_Sunset-_Key_West%2C_Florida_%288509205855%29.jpg"
dl "package-sightseeing" \
  "https://upload.wikimedia.org/wikipedia/commons/f/f2/Coast_near_the_Portland_Head_Lighthouse_%2834780000291%29.jpg"
dl "package-fall-foliage" \
  "https://upload.wikimedia.org/wikipedia/commons/b/bc/Hodgdon_Pond_Fall_Colors%2C_Acadia_National_Park_%2830107678300%29.jpg"
dl "cruise-gallery-1" \
  "https://upload.wikimedia.org/wikipedia/commons/e/ed/Portland_Harbor_-_Portland%2C_Maine%2C_USA_-_September_28%2C_2023.jpg"
dl "cruise-gallery-2" \
  "https://upload.wikimedia.org/wikipedia/commons/3/3b/Casco_Bay_092108_122.jpg"
dl "cruise-gallery-3" \
  "https://upload.wikimedia.org/wikipedia/commons/8/82/Casco_Bay_092108_167.jpg"
dl "cruise-gallery-4" \
  "https://upload.wikimedia.org/wikipedia/commons/5/51/Casco_Bay_092108_173.jpg"
dl "cruise-gallery-5" \
  "https://upload.wikimedia.org/wikipedia/commons/c/c1/Casco_Bay_092108_181.jpg"
dl "culinary-partnership" \
  "https://upload.wikimedia.org/wikipedia/commons/5/55/Holbrooks_Lobster_Wharf_And_Grill_%2817171942061%29.jpg"

# ── Activities Page ─────────────────────────────────────────────────
echo ""
echo "Activities Page:"
dl "activity-boat-cruise" \
  "https://upload.wikimedia.org/wikipedia/commons/8/8c/Casco_Bay_092108_114.jpg"

# ── OG / Social Images ──────────────────────────────────────────────
echo ""
echo "OG Images:"
dl "og-home" \
  "https://upload.wikimedia.org/wikipedia/commons/e/ed/Portland_Harbor_-_Portland%2C_Maine%2C_USA_-_September_28%2C_2023.jpg"
dl "og-boat-cruise" \
  "https://upload.wikimedia.org/wikipedia/commons/6/6c/Casco_Bay_092108_120.jpg"
dl "og-portland-guide" \
  "https://upload.wikimedia.org/wikipedia/commons/8/83/Old_Port_%28Portland%2C_Maine%29_-_IMG_8081.JPG"
dl "og-activities" \
  "https://upload.wikimedia.org/wikipedia/commons/f/f2/Coast_near_the_Portland_Head_Lighthouse_%2834780000291%29.jpg"

echo ""
echo "Done. Run 'bash scripts/convert-images.sh' to resize and convert to WebP."
