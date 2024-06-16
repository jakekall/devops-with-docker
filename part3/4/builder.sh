#!/bin/sh
git clone "https://github.com/${1}" $1
docker login -u $DOCKER_USER -p $DOCKER_PWD
docker build "./${1}" -t $2
docker push $2
