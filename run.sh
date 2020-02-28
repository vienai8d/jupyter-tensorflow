#!/bin/zsh

IMAGE_NAME=vienai8d-jupyter
CONTAINER_NAME=$IMAGE_NAME
LOCAL_DIR=$HOME/tf

docker build . -t $IMAGE_NAME
docker run -d --rm --name $CONTAINER_NAME -u $(id -u):$(id -g) -p 8888:8888 -p 9999:9999 -v $LOCAL_DIR:/tf/local $IMAGE_NAME

sleep 1

docker logs $CONTAINER_NAME
