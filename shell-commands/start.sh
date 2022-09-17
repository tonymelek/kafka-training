#! /bin/sh
export $(cat .env)
if [ $1 = "kafka" ]
then
~/$KAFKA_VER/bin/kafka-server-start.sh ~/$KAFKA_VER/config/server.properties
elif [ $1 = "zk" ]
then
~/$KAFKA_VER/bin/zookeeper-server-start.sh ~/$KAFKA_VER/config/zookeeper.properties
fi
