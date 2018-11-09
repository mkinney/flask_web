#!/usr/bin/env python
""" Simple test to verify that app.py works as expected."""

def test_app_hello(host):
    """ See if we can hit the endpoint and get the expected response."""
    command = host.command("curl http://localhost:5000")
    assert command.stdout.rstrip() == "Hey, we have Flask in a Docker container!"
    assert command.rc == 0
