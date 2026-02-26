#!/bin/bash
DOCKER_USER="your-dockerhub-username"

echo "Cleaning up old containers..."
docker stop brain-tasks-container || true
docker rm brain-tasks-container || true

echo "Starting new container..."
docker run -d --name brain-tasks-container -p 80:80 $DOCKER_USER/brain-tasks-dev:latest
