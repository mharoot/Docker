#!/usr/bin/env bash

docker rm -f myapache2server

docker rmi -f myapache2server

docker image prune -y

docker volume prune -y

docker build -t myapache2server .
