#!/usr/bin/env bash
if [ ! -f .env ]; then
  cp .env.example .env
  echo "Generated .env from .env.example"
fi
exec uvicorn app.main:app --host 0.0.0.0 --port "${PORT:-8000}"
