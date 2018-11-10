#!/bin/bash
docker-compose up -d elasticsearch

sleep 5

docker-compose up -d --no-deps kibana logstash

sleep 5

docker-compose up -d --no-deps proxy

docker-compose logs
