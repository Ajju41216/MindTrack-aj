#!/bin/bash

TAG=$1
IMAGE="your-dockerhub-username/brain-tasks-dev:$TAG"
CONTAINER="brain-tasks-container"

echo "Cleaning up old container..."
docker stop $CONTAINER || true
docker rm $CONTAINER || true

echo "Starting new container using image: $IMAGE"
docker run -d \
  -p 80:80 \
  --name $CONTAINER \
  $IMAGE
