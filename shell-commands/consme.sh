#!/bin/sh
export $(cat .env)

# use ./consme.sh test_topic "--group group-a" , the number of consumers/subscribers sgould be less than or equal numbr of partitions
# otherwise excess consumer(s) will be inactive. 
# note:  first arg is topic name, second arg any options to the command
~/$KAFKA_VER/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic $1 $2