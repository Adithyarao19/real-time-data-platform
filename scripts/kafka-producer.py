from kafka import KafkaProducer
import time

producer = KafkaProducer(bootstrap_servers='kafka:9092')

for i in range(100):
    producer.send('test-topic', f'message {i}'.encode('utf-8'))
    time.sleep(1)