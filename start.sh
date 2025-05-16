#!/usr/bin/env bash
docker build -t myapp .
docker run -e PORT=8000 myapp
