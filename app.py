from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hey, we have Flask in a Docker container!  Here is a new commit!'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')