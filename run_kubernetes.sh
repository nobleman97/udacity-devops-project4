#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="4568910/p4container:v2"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microproject \
  --image=4568910/p4container:v2 \
  --port=80 --labels app=microproject

# wait for pod to be created
sleep 30

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward microproject 8000:80

