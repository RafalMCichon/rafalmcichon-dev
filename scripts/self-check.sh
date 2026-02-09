#!/usr/bin/env sh
set -eu

echo "=== Jekyll Site Self-Check ==="
echo ""

echo "✓ Checking layouts contain {{ content }}..."
for f in _layouts/default.html _layouts/page.html _layouts/post.html; do
  if [ ! -f "$f" ]; then
    echo "  ERROR: missing $f"
    exit 1
  fi
  if ! grep -q "{{ content }}" "$f"; then
    echo "  ERROR: $f is missing {{ content }}"
    exit 1
  fi
done
echo "  OK: All layouts valid"
echo ""

echo "✓ Checking llms.txt for mojibake..."
if [ -f "llms.txt" ] && grep -q "â" llms.txt; then
  echo "  ERROR: llms.txt contains mojibake (found 'â'). Use UTF-8 or ASCII-only."
  exit 1
fi
echo "  OK: llms.txt clean"
echo ""

echo "✓ Checking front matter (title + description)..."
for f in $(find . -maxdepth 3 -name "*.md" -not -path "./_posts/*"); do
  case "$f" in
    ./404.md) continue ;;
  esac
  if ! grep -q "^title:" "$f"; then
    echo "  WARN: missing title in $f"
  fi
  if ! grep -q "^description:" "$f"; then
    echo "  WARN: missing description in $f"
  fi
done
echo "  OK: Front matter check complete"
echo ""

echo "=== All checks passed! ==="
