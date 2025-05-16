#!/usr/bin/env bash
# Load .env if present
if [ -f .env ]; then
  set -o allexport
  source .env
  set +o allexport
fi

# Start the server
exec uvicorn app.main:app --host 0.0.0.0 --port ${PORT:-8000}
