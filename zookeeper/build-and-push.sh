#!/usr/bin/env bash

docker build -t hekonsek/streamshift-zookeeper:0.0.2-SNAPSHOT . &&
docker push hekonsek/streamshift-zookeeper:0.0.2-SNAPSHOT