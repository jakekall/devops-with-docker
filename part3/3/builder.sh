#!/bin/bash
git clone "https://github.com/${1}" $1
docker build "./${1}" -t $2
docker push $2
