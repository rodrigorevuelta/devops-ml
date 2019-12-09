#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=project-ml .
# Step 2: 
# List docker images
docker images ls
# Step 3: 
# Run flask app
docker run -ti --name project-ml -p8080:8080 project-ml
