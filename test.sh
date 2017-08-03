#!/bin/bash

docker build -t lolemetayer/curlpy .

if [[ $(docker ps -a | grep -c curlpy) -eq 1 ]]; then docker stop curlpy; fi
if [[ $(docker ps -a | grep -c curlpy) -eq 1 ]]; then docker rm curlpy; fi

docker run --name curlpy -d -p 9500:80 lolemetayer/curlpy

sleep 1

docker ps
