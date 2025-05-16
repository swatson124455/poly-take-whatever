# Deployment Setup

This repository is configured for automatic deployment on Render and local Docker use.

## Render

1. Connect this repo to Render.
2. In Render dashboard, set the following Environment Variables:
   - `WALLET_PRIVATE_KEY` (your Ethereum private key)
3. Render will build using the `Dockerfile`, and `entrypoint.sh` will generate `.env` from `.env.example`.

## Local

```bash
docker build -t myapp .
docker run -e PORT=8000 -e WALLET_PRIVATE_KEY=your_key_here myapp
```
