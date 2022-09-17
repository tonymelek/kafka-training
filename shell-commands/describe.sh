#!/bin/sh

~/kafka_2.13-3.2.0/bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic $1