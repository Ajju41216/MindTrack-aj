#!/bin/bash
# Use the first argument as the tag, or default to 'latest'
TAG=${1:-latest}
DOCKER_USER="your-dockerhub-username"

echo "Building Docker image with tag: $TAG..."
docker build -t $DOCKER_USER/brain-tasks-dev:$TAG .
