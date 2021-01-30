#!/bin/bash

# You can run the entire script to start DB container
# Password to connect into the DB is in Dockerfile

export CONTAINER_NAME=imaginethis_db
export DB_VOLUME_NAME=postgres-vol
export POSTGRES_USER=imaginethis
export POSTGRES_DB=imaginethis

# Check if container is not running already
if [ "$(docker ps | grep $CONTAINER_NAME)" ]; then
    echo "Container $CONTAINER_NAME running already."
    exit 1
fi

# Create volume for DB if it does not exist already
if [ ! "$(docker volume ls | grep $DB_VOLUME_NAME)" ]; then
    echo "Creating new volume $DB_VOLUME_NAME as it does not exist."
    docker volume create "$DB_VOLUME_NAME"
fi

# Build the PostgreSQL container image
docker build -t "$CONTAINER_NAME" .

# Run the PostgreSQL container with linked volume and exposing port 5432
docker run --name "$CONTAINER_NAME" -v postgres-vol:/var/lib/postgresql/data -p 5432:5432 -d "$CONTAINER_NAME"
