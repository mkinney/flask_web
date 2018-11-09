#!/usr/bin/env python
""" Simple flask web application."""

from flask import Flask
APP = Flask(__name__)

@APP.route('/')
def hello_world():
    """ Show some text when we hit the default endpoint."""
    return 'Hey, we have Flask in a Docker container!'


if __name__ == '__main__':
    APP.run(debug=True, host='0.0.0.0')
