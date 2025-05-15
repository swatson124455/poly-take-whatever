#!/usr/bin/env bash
set -e

# Bootstrap environment file if missing
if [ ! -f .env ]; then
  cp .env.example .env
  echo "Copied .env.example to .env"
fi

# Start the application
exec uvicorn app.main:app --host 0.0.0.0 --port ${PORT:-8000}
