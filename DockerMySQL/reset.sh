#!/usr/bin/env bash

docker stop server_instance

docker rm server_instance

docker rmi -f myapache2server

# prune
docker container prune -y

docker image prune -y

docker volume prune -y


# build
docker build -t myapache2server .

# run
# docker run --name server_instance  -p 8080:80 -d myapache2server
docker run --name server_instance --link some-mysql:mysql -p 8080:80 -d myapache2server