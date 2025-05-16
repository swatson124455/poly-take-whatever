#!/usr/bin/env bash
# Build Docker image
docker build -t myapp .

# Run Docker container
docker run -e PORT=8000 -p 8000:8000 myapp
