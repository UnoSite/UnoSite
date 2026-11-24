#!/usr/bin/env bash
# Usage: new-button.sh <filename> "<label>" ["<subtitle>"]
# Creates assets/links/<filename>.svg in the linktree style (420 wide, lime #cad404).
# With a subtitle the button is taller and shows the subtitle in smaller text below the label.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
mkdir -p assets/links
font="-apple-system,BlinkMacSystemFont,'Segoe UI',Helvetica,Arial,sans-serif"
# Shrink the font for long labels so they never overflow the button.
size=18; [ ${#2} -gt 28 ] && size=16
if [ -n "${3:-}" ]; then
  h=68; ty=31
  sub="
  <text x=\"210\" y=\"51\" text-anchor=\"middle\" fill=\"#cad404\" fill-opacity=\"0.75\" font-family=\"$font\" font-size=\"13\">$3</text>"
  aria="$2 – $3"
else
  h=56; ty=35; sub=""; aria="$2"
fi
cat > "assets/links/$1.svg" <<SVG
<svg xmlns="http://www.w3.org/2000/svg" width="420" height="$h" viewBox="0 0 420 $h" role="img" aria-label="$aria">
  <rect x="1.5" y="1.5" width="417" height="$((h-3))" rx="$(( (h-3)/2 ))" fill="#161b22" stroke="#cad404" stroke-width="3"/>
  <text x="210" y="$ty" text-anchor="middle" fill="#cad404" font-family="$font" font-size="$size" font-weight="600">$2  →</text>$sub
</svg>
SVG
echo "assets/links/$1.svg"
