#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=newimage
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username emmbanga
docker tag newimage emmbanga/newimage:v1pro3
# Step 3:
# Push image to a docker repository
docker push emmbanga/newimage:v1pro3