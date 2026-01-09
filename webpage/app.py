from flask import Flask
import redis

app = Flask(__name__)
r = redis.Redis(host='database', port=6379)

@app.route('/')
def hello():
    count = r.incr('visits')
    return f"Hello! Visits: {count}"

app.run(host='0.0.0.0', port=5000)

