#!/usr/bin/env sh
set -eu

HOST="${HOST:-127.0.0.1}"
PORT="${PORT:-4001}"

if command -v lsof >/dev/null 2>&1; then
  if lsof -iTCP:"$PORT" -sTCP:LISTEN -t >/dev/null 2>&1; then
    echo "ERROR: Port $PORT is already in use."
    echo "Try: PORT=$((PORT+1)) $0"
    exit 1
  fi
fi

bundle exec jekyll serve --host "$HOST" --port "$PORT"
