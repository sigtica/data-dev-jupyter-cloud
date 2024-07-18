#!/bin/sh
docker run -d --rm \
-p "0.0.0.0:8888:8888" \
-v "$(pwd)/shared:/content/shared" \
"data-dev-jupyter-cloud:v1"
