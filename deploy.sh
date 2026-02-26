#!/bin/bash
# Stop and remove existing container to avoid port conflicts
docker stop brain-tasks-container || true
docker rm brain-tasks-container || true

# Run the new container
docker run -d --name brain-tasks-container -p 80:80 your-dockerhub-username/brain-tasks-dev:latest
