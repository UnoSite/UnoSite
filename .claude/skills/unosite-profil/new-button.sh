#!/usr/bin/env bash
# Brug: new-button.sh <filnavn> "<knaptekst>"
# Laver assets/links/<filnavn>.svg i linktree-stilen (420x56, limegrøn #cad404).
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
mkdir -p assets/links
cat > "assets/links/$1.svg" <<SVG
<svg xmlns="http://www.w3.org/2000/svg" width="420" height="56" viewBox="0 0 420 56" role="img" aria-label="$2">
  <rect x="1.5" y="1.5" width="417" height="53" rx="26.5" fill="#161b22" stroke="#cad404" stroke-width="3"/>
  <text x="210" y="35" text-anchor="middle" fill="#cad404" font-family="-apple-system,BlinkMacSystemFont,'Segoe UI',Helvetica,Arial,sans-serif" font-size="18" font-weight="600">$2  →</text>
</svg>
SVG
echo "assets/links/$1.svg"
