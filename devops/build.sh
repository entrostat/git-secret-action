#!/bin/bash

VERSION=$1

docker buildx create --name git-secret-action-builder
docker buildx use git-secret-action-builder

docker buildx build --platform linux/amd64,linux/amd64/v2,linux/amd64/v3,linux/386,linux/arm64,linux/arm/v7,linux/arm/v8 ../ -f ./Dockerfile -t "kerren/git-secret-action:$VERSION" --push
