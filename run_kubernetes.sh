#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="wiflorez/willprojectimage"

# Step 2
# Run a Docker Hub container with kubernetes
kubectl run willproject-app\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=willproject-app


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to host
kubectl port-forward willproject-app 8000:80
