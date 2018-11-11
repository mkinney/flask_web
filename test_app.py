#!/usr/bin/env python
""" Simple test to verify that app.py works as expected."""

import requests

def test_app_hello():
    """ See if we can hit the endpoint and get the expected response."""
    response = requests.get("http://localhost:5000")
    assert response.status_code == 200
    assert response.text.rstrip() == "Hey, we have Flask in a Docker container!"
