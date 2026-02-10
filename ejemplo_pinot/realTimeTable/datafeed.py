from kafka import KafkaProducer
import json
import time
import random

producer = KafkaProducer(
    bootstrap_servers=['kafka:9092'],
    value_serializer=lambda v: json.dumps(v).encode('utf-8')
)

while True:
    msg = {
        "sensor_id": f"sensor_{random.randint(1,5)}",
        "temperature": round(random.uniform(18, 35), 2),
        "humidity": round(random.uniform(30, 80), 2),
        "timestamp": int(time.time() * 1000)
    }
    producer.send('sensor-data', msg)
    print(f"contenido enviado: {msg}")
    time.sleep(1)