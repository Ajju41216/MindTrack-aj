#!/bin/bash
IMAGE_NAME="your-dockerhub-username/aj-tasks-dev"
TAG=$1

if [ -z "$TAG" ]; then
  echo "Usage: ./build.sh <tag>"
  exit 1
fi

docker build -t $IMAGE_NAME:$TAG .
