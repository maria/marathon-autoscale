#!/bin/bash
set -eo pipefail

TAG=$(git rev-parse HEAD)
TAG=${TAG:0:7}

echo "Publishing docker container for Marathon AutoScale..."
docker push marianitadn/marathon-autoscale:${TAG}
