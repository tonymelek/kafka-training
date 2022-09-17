#!/bin/sh

~/kafka_2.13-3.2.0/bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic $1