#!/bin/sh

~/kafka_2.13-3.2.0/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --partitions $2 --topic $1 --replication-factor 1 