#! /bin/sh
if [ $1 = "kafka" ]
then
~/kafka_2.13-3.2.0/bin/kafka-server-stop.sh
elif [ $1 = "zk" ]
then
~/kafka_2.13-3.2.0/bin/zookeeper-server-stop.sh
fi
