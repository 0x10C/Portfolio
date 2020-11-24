#!/usr/bin/env bash
if [ ! "$(docker ps -a | grep mongo)" ]
    then echo "start mongo db docker";
    mkdir ~/data;
    docker pull mongo;
    docker run --name mongo -p 27017:27017 -v ~/data:/data/db -itd mongo;
fi

docker pull tensorflow/tensorflow:latest-devel-py3
docker run --name chatbot_dev -p 5005:5005 -p 5002:5002 --link mongo -v "$PWD":/app -itd tensorflow/tensorflow:latest-devel-py3

