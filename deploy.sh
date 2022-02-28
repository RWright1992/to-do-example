#!/bin/bash

docker network create duo-network

docker build -t to-do-app .
docker build -t duo-db db

docker run -d \
    --network duo-network \
    --name mysql \
    duo-db

docker run -d -p 5000:5000 \
    --network duo-network \
    --name flask-app \
    to-do-app