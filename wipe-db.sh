#!/bin/bash

export CONTAINER_NAME=imaginethis_db
export DB_VOLUME_NAME=postgres-vol

if [ "$(docker ps | grep $CONTAINER_NAME)" ]; then
    echo "Stopping container..."
    docker stop $CONTAINER_NAME
fi

if [ "$(docker container ls --all | grep $CONTAINER_NAME)" ]; then
    echo "Removing container..."
    docker container rm $CONTAINER_NAME
fi

if [ "$(docker volume ls | grep $DB_VOLUME_NAME)" ]; then
    echo "Removing volume..."
    docker volume rm $DB_VOLUME_NAME
fi
