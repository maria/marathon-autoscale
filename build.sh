#!/bin/bash
set -eo pipefail

TAG=$(git rev-parse HEAD)
TAG=${TAG:0:7}

echo "Building docker container for Marathon AutoScale..."
docker build --rm -t marianitadn/marathon-autoscale:${TAG} .
