#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=devops-ml .
# Step 2: 
# List docker images
docker images ls
# Step 3: 
# Run flask app
docker run -ti --rm --name devops-ml -p8080:8080 devops-ml
