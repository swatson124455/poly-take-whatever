#!/usr/bin/env bash
# If .env is missing but .env.example exists, copy it
if [ ! -f .env ] && [ -f .env.example ]; then
  cp .env.example .env
fi

uvicorn app.main:app --host 0.0.0.0 --port ${PORT:-8000}
