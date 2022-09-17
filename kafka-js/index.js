const ip = require('ip');
const { Kafka, CompressionTypes, loglevel } = require('kafkajs');
const host = ip.address().match(/192\.168\.42.+/) && 'localhost:9092';

const kafka = new Kafka({
    brokers: [host],
    clientId: 'example-producer'
});

const topic = 'test-topic';
const producer = kafka.producer();
const consumer = kafka.consumer({ groupId: 'group-b' })


const messageSender = async (producer, message) => {
    await producer.connect();
    await producer.send({
        topic: 'test-topic',
        messages: [
            { value: message },
        ],
    })
    await producer.disconnect()
}



const runner = async () => {

    await consumer.connect();

    await consumer.subscribe({ topics: [topic] })
    await messageSender(producer, 'test')
    await consumer.run({
        eachMessage: async ({ topic, partition, message }) => {
            console.log({
                value: message.value.toString(),
            })
        },
    })
    await messageSender(producer, 'test')
}

//runner()


module.exports = { producer, messageSender }


