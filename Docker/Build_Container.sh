#!/bin/bash
docker_repo="willhanau/pytorch-frustum-convnet"
docker_tag="v1.1"

docker build -t $docker_repo:$docker_tag .
docker push $docker_repo:$docker_tag
