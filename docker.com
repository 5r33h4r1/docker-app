#!/bin/bash

sudo apt-get update -y 
echo "systeam has been updated"

sudo apt-get remove docker docker-engine docker.io
echo "docker old version deleted"

sudo apt install docker.io
echo "docker has installed"

sudo systemctl start docker
echo "docker has started"

sudo systemctl enable docker

docker --version

