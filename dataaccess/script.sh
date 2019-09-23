#!/bin/bash

docker run \
    --name redis \
    -d redis:alpine


#Run a 'detached' container.
docker run \
    --rm \
    --name postgres \
    --hostname postgres \
    --detach \
    --volume=$PWD/data:/data:rw \
    --volume=$PWD/init:/docker-entrypoint-initdb.d \
    --publish 5432:5432 \
    --env POSTGRES_PASSWORD=password \
    postgres

# Run a 'detached' container.
docker run \
    --rm \
    --name jupyter \
    --hostname jupyter \
    --detach \
    --volume=$PWD/notebook:/home/jovyan/work \
    --publish 8888:8888 \
    --env JUPYTER_ENABLE_LAB=yes \
    --link redis:redis --link postgres:postgres\
    jupyter/datascience-notebook
