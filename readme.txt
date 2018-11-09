see https://runnable.com/docker/python/dockerize-your-flask-application

Make sure it works locally:

    virtualenv -p python3 venv
    source venv/bin/activate
    pip install -r requirements.txt
    python app.py

Build it:

    docker build -t flask-tutorial:latest .
    docker run -d -p 5000:5000 flask-tutorial

Test that it works (manually):

    # click on: http://localhost:5000/

Ensure that we do not have any pylint issues:

    make lint

Clean up:

    docker ps -a
    # Note: Use whatever docker id was created
    docker kill 487
    docker rm 487


Create .git/hooks/pre-commit

    #!/bin/bash
    make test

Ensure it runs: chmod +x .git/hooks/pre-commit

