#!/usr/bin/env bash
set -e

# If .env is missing, copy from example
if [ ! -f ".env" ]; then
  cp .env.example .env
fi

# Run migrations or other setup here, if needed

# Start the app
exec uvicorn app.main:app --host 0.0.0.0 --port ${PORT:-8000}
