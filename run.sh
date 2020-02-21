#!/bin/zsh

IMAGE_NAME=vienai8d-jupyter
LOCAL_DIR=$HOME/tf

docker build . -t $IMAGE_NAME
CONTAINER_ID=`docker run -d --rm -u $(id -u):$(id -g) -p 8888:8888 -v $LOCAL_DIR:/tf/local $IMAGE_NAME`

sleep 1

docker logs $CONTAINER_ID
