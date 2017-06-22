#!/usr/bin/env bash

docker build -t hekonsek/streamshift-kafka:0.0.1-SNAPSHOT .
docker push hekonsek/streamshift-kafka:0.0.1-SNAPSHOT