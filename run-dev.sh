#!/bin/sh
VER=$1
if [ -z $VER ];
then
    VER=latest
fi
echo "VERSION=$VER"

REPO=nmhung1210/mern-stack-docker
TAG_NAME=$REPO:$VER
IMG_NAME=mern-stack-dev

docker stop $IMG_NAME
docker rm $IMG_NAME
docker run \
    --restart always \
    --name $IMG_NAME \
    $TAG_NAME 
