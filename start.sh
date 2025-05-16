#!/usr/bin/env bash
docker build -t myapp .
docker run -e PORT=8000 -p 8000:8000 myapp
