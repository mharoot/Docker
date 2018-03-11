# Docker with PHP and Redis example

While migrating from PHP 5.6 to PHP 7.1 we stumbled on a critical issue regarding our session management. Apparently PHP 7.1 triggers an error in the [redis extension](http://pecl.php.net/packages/redis) version 3.1.0.

```
Warning: session_start(): Failed to read session data: redis (path: tcp://localhost:6379)
```

This repository contains the source code to simulate the issue using [Docker](https://docker.com) containers.

See also the [YouTube video](https://youtu.be/cXvH2LLWylg) describing the issue.

[![Watch on YouTube](https://img.youtube.com/vi/cXvH2LLWylg/0.jpg)](https://youtu.be/cXvH2LLWylg)

## Solution

When downgrading the php extension for Redis to 3.0.0. the problem was resolved for PHP 7.1 (see #3b9b211). Unfortunately it's not resolved for PHP 7.0.

# Run the example
- be sure your in the directory with the docker-compose.yml file
- type the following command: `docker-compose up`


# USEFUL DOCKER COMMANDS
docker stop $(docker ps -a -q) # stop all docker containers
docker rm -f $(docker ps -a -q) # remove all docker containers
docker images -q | xargs docker rmi -f # remove all docker images 'xargs' for linux and mac OS

# Windows equivalent to docker images -q | xargs docker rmi -f
@echo off
FOR /f "tokens=*" %%i IN ('docker ps -aq') DO docker rm %%i
FOR /f "tokens=*" %%i IN ('docker images --format "{{.ID}}"') DO docker rmi %%i

sudo pip uninstall docker-compose # uninstall docker-compose

Then reinstalled docker-compose:
sudo pip install -U docker-compose

# DO NOT RUN docker-compose up IS VSCODE 