#!/bin/sh

# --reset-offsets --shift-by 2/-2 ..etc
~/kafka_2.13-3.2.0/bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 $1