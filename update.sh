#!/bin/bash

git fetch
if [[ $(git rev-parse HEAD) != $(git rev-parse @{u}) ]]
then
    echo 'Behind remote config; updating'
    git pull
    docker-compose stop
fi

docker-compose up --build

