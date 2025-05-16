# Poly Take Whatever - Render Deploy Fix

This folder contains the fixed deploy setup:

## Features
- Dockerfile no longer fails on missing .env.example
- Entry-point script loads `.env` if you provide it
- `.env.example` with a placeholder key
- Quick start instructions

## Quick Start

```bash
# Build the Docker image
docker build -t myapp .

# Run locally
docker run -e PORT=8000 myapp
```

## Render Deployment

1. Push this repo to GitHub.
2. In Render, create a new **Web Service** pointing to this GitHub repo.
3. Set the environment variable:
   - `WALLET_PRIVATE_KEY` = your actual 32-byte private key
4. Enable **Auto Deploy**.
5. Done—Render will build and start without extra clicks.
