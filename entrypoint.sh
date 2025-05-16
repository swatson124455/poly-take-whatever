#!/usr/bin/env bash
set -e

# Ensure .env exists, generate from example if needed
if [ -f .env ]; then
  echo ".env already exists"
elif [ -f .env.example ]; then
  cp .env.example .env
  echo "Created .env from .env.example"
else
  echo "Error: .env.example not found"
  exit 1
fi

# Start the FastAPI app with Uvicorn
exec uvicorn app.main:app --host 0.0.0.0 --port ${PORT:-8000}
