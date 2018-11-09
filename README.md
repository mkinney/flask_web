[![Build Status](https://travis-ci.org/mkinney/flask_web.svg?branch=master)](https://travis-ci.org/mkinney/flask_web)

# Background:
Started from [dockerize-your-flask-application](https://runnable.com/docker/python/dockerize-your-flask-application)

# Development:
Make sure the app works locally:

    virtualenv -p python3 venv
    source venv/bin/activate
    pip install -r requirements.txt
    python app.py

# Build it: (or `make build`)

    docker build -t flask-tutorial:latest .

# Run it: (or `make run`)

    docker run -d -p 5000:5000 flask-tutorial

# Test that it works (or `make test`):

    # manually by opening http://localhost:5000/

# Ensure that we do not have any pylint issues:

    make lint

# Clean up: (or `make clean`)

    docker ps -a
    # Note: Use whatever docker id was created
    docker kill 487
    docker rm 487


# Tip: Create `.git/hooks/pre-commit`

    #!/bin/bash
    make test

Ensure the script is executable: `chmod +x .git/hooks/pre-commit`
