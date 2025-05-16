#!/usr/bin/env bash
# Create .env from example if not exists
if [ ! -f .env ]; then
  cp .env.example .env
  echo "Generated .env from .env.example"
fi

# Start the app
exec uvicorn app.main:app --host 0.0.0.0 --port ${PORT:-8000}
