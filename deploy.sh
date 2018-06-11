#!/bin/sh

VER=$1
if [ -z $VER ];
then
    VER=latest
fi
echo "VERSION=$VER"

REPO=nmhung1210/mern-stack-docker
TAG_NAME=$REPO:$VER

docker build -t $TAG_NAME . && \
docker push $TAG_NAME




