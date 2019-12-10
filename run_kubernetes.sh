#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=rodrigorr/devops-ml
#use kind instead of minikube
kind load docker-image $dockerpath
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run devops-ml --image=$dockerpath
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl expose deployments devops-ml --port=8080
kubectl proxy --address='0.0.0.0' --accept-hosts='^*$' --port=8080 &
#after call to make_predictions ...
#kubectl logs service/devops-ml
