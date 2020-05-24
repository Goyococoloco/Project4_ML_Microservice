#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=johnsmicroservicev2
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag johnsmicroservicev2 goyococoloco/johnsmicroservicev2:version1

# Step 3:
# Push image to a docker repository
docker push goyococoloco/johnsmicroservicev2:version1