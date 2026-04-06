#!/bin/bash
# generate-placeholders.sh
# Creates labeled navy placeholder WebP images for every image slot on the site.
# Run once: bash scripts/generate-placeholders.sh
# Requires: brew install imagemagick

set -e

IMAGES_DIR="images"
NAVY="#2C3E6B"
GOLD="#C5A572"
FONT="/Library/Fonts/Arial Unicode.ttf"

mkdir -p "$IMAGES_DIR"

make_placeholder() {
  local filename=$1
  local width=$2
  local height=$3
  local label=$4

  magick \
    -size "${width}x${height}" "xc:${NAVY}" \
    -font "${FONT}" -pointsize 28 -fill "${GOLD}" \
    -gravity center \
    -annotate 0 "${label}\n${width}x${height}" \
    "${IMAGES_DIR}/${filename}"

  echo "  ✓ ${filename}"
}

echo "Generating placeholder images..."
echo ""

# ── Hero images ────────────────────────────────────────────────
echo "Heroes:"
make_placeholder "hero-home.webp"               1920 1080 "hero-home"
make_placeholder "hero-boat-cruise.webp"        1920 1080 "hero-boat-cruise"
make_placeholder "portland-maine-guide-hero.webp" 1920 1080 "portland-maine-guide-hero"
make_placeholder "maine-activities-hero.webp"   1920 1080 "maine-activities-hero"

# ── OG / Social sharing images (1200×630) ─────────────────────
echo ""
echo "OG Images (social sharing):"
make_placeholder "og-home.webp"            1200 630 "og-home"
make_placeholder "og-boat-cruise.webp"     1200 630 "og-boat-cruise"
make_placeholder "og-portland-guide.webp"  1200 630 "og-portland-guide"
make_placeholder "og-activities.webp"      1200 630 "og-activities"
make_placeholder "og-blog.webp"            1200 630 "og-blog"

# ── Homepage sections ──────────────────────────────────────────
echo ""
echo "Homepage:"
make_placeholder "why-maine-coast.webp"      600 450 "why-maine-coast"
make_placeholder "why-maine-food.webp"    600 450 "why-maine-food"
make_placeholder "why-maine-boat-group.webp" 600 450 "why-maine-boat-group"
make_placeholder "featured-boat-cruise.webp" 900 700 "featured-boat-cruise"
make_placeholder "gallery-1.webp"           1200 900 "gallery-1 (large)"
make_placeholder "gallery-2.webp"            600 450 "gallery-2"
make_placeholder "gallery-3.webp"            600 450 "gallery-3"
make_placeholder "gallery-4.webp"            600 450 "gallery-4"
make_placeholder "gallery-5.webp"            600 450 "gallery-5"
make_placeholder "guide-portland-weekend.webp" 600 400 "guide-portland-weekend"
make_placeholder "guide-boat-cruise.webp"    600 400 "guide-boat-cruise"
make_placeholder "guide-activities.webp"        600 400 "guide-activities"

# ── Boat cruise page ───────────────────────────────────────────
echo ""
echo "Boat Cruise Page:"
make_placeholder "boat-marie-l.webp"          700 520 "boat-marie-l"
make_placeholder "casco-islands.webp"         400 300 "casco-islands"
make_placeholder "package-mimosa-brunch.webp" 600 400 "package-mimosa-brunch"
make_placeholder "package-sunset-charter.webp" 600 400 "package-sunset-charter"
make_placeholder "package-sightseeing.webp"   600 400 "package-sightseeing"
make_placeholder "cruise-gallery-1.webp"     1200 900 "cruise-gallery-1 (large)"
make_placeholder "cruise-gallery-2.webp"      600 450 "cruise-gallery-2"
make_placeholder "cruise-gallery-3.webp"      600 450 "cruise-gallery-3"
make_placeholder "cruise-gallery-4.webp"      600 450 "cruise-gallery-4"
make_placeholder "cruise-gallery-5.webp"      600 450 "cruise-gallery-5"

# ── Activities page ────────────────────────────────────────────
echo ""
echo "Activities Page:"
make_placeholder "activity-boat-cruise.webp"  800 500 "activity-boat-cruise"

# ── Blog page ──────────────────────────────────────────────────
echo ""
echo "Blog Page:"
make_placeholder "blog-portland-weekend.webp"    900 560 "blog-portland-weekend"
make_placeholder "blog-boat-cruise-guide.webp"   600 400 "blog-boat-cruise-guide"
make_placeholder "blog-activities.webp"          600 400 "blog-activities"
make_placeholder "blog-packing.webp"             600 400 "blog-packing"
make_placeholder "blog-vs-nashville.webp"        600 400 "blog-vs-nashville"
make_placeholder "blog-culinary-partnership.webp"             600 400 "blog-culinary-partnership"
make_placeholder "blog-boston-bachelorette.webp" 600 400 "blog-boston-bachelorette"

# ── CTA background ─────────────────────────────────────────────
echo ""
echo "Misc:"
make_placeholder "cta-bg.webp" 1920 600 "cta-bg"
make_placeholder "culinary-partnership.webp"      680  520 "culinary-partnership"
make_placeholder "blog-culinary-partnership.webp" 600  400 "blog-culinary-partnership"
make_placeholder "package-sunset-charter.webp"    600  400 "package-sunset-charter"
make_placeholder "package-sightseeing.webp"       600  400 "package-sightseeing"
make_placeholder "package-fall-foliage.webp"      600  400 "package-fall-foliage"

echo ""
echo "Done. $(ls images/*.webp 2>/dev/null | wc -l | tr -d ' ') placeholder images created in images/"
echo "Replace them with real photos using: bash scripts/convert-images.sh"
