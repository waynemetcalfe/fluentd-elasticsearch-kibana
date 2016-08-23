#!/bin/bash

ES_DATA=./elasticsearch/data

[[ ! -d ${ES_DATA} ]] && mkdir -p ${ES_DATA}

docker-compose down
docker-compose up -d
