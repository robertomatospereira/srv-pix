import uuid
import time
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/generate-pix', methods=['GET'])
def generate_pix():
    pix_key = str(uuid.uuid4())
    return jsonify({"pix_key": pix_key})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
