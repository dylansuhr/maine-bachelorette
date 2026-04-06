#!/bin/bash
# convert-images.sh
# Converts raw photos in raw/ to correctly-sized, compressed WebP files in images/.
#
# WORKFLOW:
#   1. Drop your raw JPGs/PNGs into raw/ named to match the target (e.g. raw/hero-home.jpg)
#   2. Run: bash scripts/convert-images.sh
#   3. Optimized WebP files appear in images/
#
# Requires: brew install imagemagick

RAW_DIR="raw"
OUT_DIR="images"
QUALITY=82

mkdir -p "$OUT_DIR"

converted=0
skipped=0

# Format: "filename width height"
IMAGES=(
  "hero-home                  1920 1080"
  "hero-boat-cruise           1920 1080"
  "portland-maine-guide-hero  1920 1080"
  "maine-activities-hero      1920 1080"
  "og-home                    1200 630"
  "og-boat-cruise             1200 630"
  "og-portland-guide          1200 630"
  "og-activities              1200 630"
  "og-blog                    1200 630"
  "why-maine-coast            600  450"
  "why-maine-food          600  450"
  "why-maine-boat-group       600  450"
  "featured-boat-cruise       900  700"
  "gallery-1                  1200 900"
  "gallery-2                  600  450"
  "gallery-3                  600  450"
  "gallery-4                  600  450"
  "gallery-5                  600  450"
  "guide-portland-weekend     600  400"
  "guide-boat-cruise          600  400"
  "guide-activities              600  400"
  "boat-marie-l               700  520"
  "casco-islands              400  300"
  "package-mimosa-brunch      600  400"
  "package-sunset-charter      600  400"
  "package-sightseeing        600  400"
  "cruise-gallery-1           1200 900"
  "cruise-gallery-2           600  450"
  "cruise-gallery-3           600  450"
  "cruise-gallery-4           600  450"
  "cruise-gallery-5           600  450"
  "activity-boat-cruise       800  500"
  "blog-portland-weekend      900  560"
  "blog-boat-cruise-guide     600  400"
  "blog-activities            600  400"
  "blog-packing               600  400"
  "blog-vs-nashville          600  400"
  "blog-culinary-partnership               600  400"
  "blog-boston-bachelorette   600  400"
  "cta-bg                     1920 600"
  "culinary-partnership       680  520"
  "blog-culinary-partnership  600  400"
  "package-sunset-charter     600  400"
  "package-sightseeing        600  400"
  "package-fall-foliage       600  400"
)

echo "Converting images from raw/ → images/ ..."
echo ""

for entry in "${IMAGES[@]}"; do
  read -r name width height <<< "$entry"

  # Find source file (jpg, jpeg, png, heic — any case)
  src=""
  for ext in jpg jpeg JPG JPEG png PNG heic HEIC; do
    candidate="${RAW_DIR}/${name}.${ext}"
    if [ -f "$candidate" ]; then
      src="$candidate"
      break
    fi
  done

  if [ -z "$src" ]; then
    echo "  – ${name}.webp  (no source in raw/ — skipping)"
    ((skipped++))
    continue
  fi

  out="${OUT_DIR}/${name}.webp"

  magick "$src" \
    -resize "${width}x${height}^" \
    -gravity center \
    -extent "${width}x${height}" \
    -quality "$QUALITY" \
    "$out"

  size_kb=$(du -k "$out" | cut -f1)
  echo "  ✓ ${name}.webp  (${size_kb}KB)"
  ((converted++))
done

echo ""
echo "Done. ${converted} converted, ${skipped} skipped."
if [ "$skipped" -gt 0 ]; then
  echo "Add missing files to raw/ and re-run to convert them."
fi
