#!/usr/bin/env bash

docker run --name=ZOOKEEPER_HOST -p 2181:2181 -it wurstmeister/zookeeper:3.4.6
docker run -it --link ZOOKEEPER_HOST:ZOOKEEPER_HOST -e KAFKA_ZOOKEEPER_CONNECT=ZOOKEEPER_HOST:2181 -e KAFKA_ADVERTISED_PORT=9092 -p 9092 wurstmeister/kafka:0.10.2.1