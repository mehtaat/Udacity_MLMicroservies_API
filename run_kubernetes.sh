#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=mehtaat/app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run apppod --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods -A

# Step 4:
# Forward the container port to a host
kubectl port-forward apppod 8000:80

