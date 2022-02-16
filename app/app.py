from flask import Flask
from get_comic import get_comic

app = Flask(__name__)


@app.route("/")
def hello_world():
    src = get_comic()
    return '<H1>Hello Watttron!</H1> ' \
           '<img src="%s" alt="No image could be loaded :/">' % src


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
