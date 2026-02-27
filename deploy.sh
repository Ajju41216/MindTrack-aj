#!/bin/bash
echo "Deploying with Docker Compose..."

docker compose up -d --force-recreate
