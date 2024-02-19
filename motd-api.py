import os
from flask import Flask, jsonify

app = Flask(__name__)

# Récupération des variables d'environnement
MESSAGE = os.environ.get('MESSAGE', 'Welcome to MOTD API!')
APP_PORT = int(os.environ.get('APP_PORT', 5000))

@app.route('/')
def get_motd():
    return jsonify({'message': MESSAGE})

if __name__ == '__main__':
    app.run(port=APP_PORT)
