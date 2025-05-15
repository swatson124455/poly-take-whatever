#!/usr/bin/env bash
# If .env doesn't exist, copy from example
if [ ! -f ".env" ]; then
  cp .env.example .env
  echo "Created .env from .env.example"
fi

# Run migrations or other setup here if needed

# Start the server
exec uvicorn app.main:app --host 0.0.0.0 --port "${PORT:-8000}"
