#!/usr/bin/env bash

docker build -t hekonsek/streamshift-zookeeper:0.0.1-SNAPSHOT . &&
docker push hekonsek/streamshift-zookeeper:0.0.1-SNAPSHOT