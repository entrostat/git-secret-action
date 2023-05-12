#!/bin/bash

VERSION=$1

docker build . -t "kerren/git-secret-action:$VERSION"

docker push "kerren/git-secret-action:$VERSION"

