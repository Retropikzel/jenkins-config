#!/bin/bash

git fetch
if [[ $(git rev-parse HEAD) != $(git rev-parse @{u}) ]]
then
    echo 'Behind remote config; updating'
    git pull
fi

docker-compose up -d --build

