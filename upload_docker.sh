#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=rhotimee/ml-api


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username rhotimee
docker image tag ml-api $dockerpath:v1

# Step 3:
# Push image to a docker repository
docker push $dockerpath:v1
