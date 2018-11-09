[![Build Status](https://travis-ci.org/mkinney/flask_web.svg?branch=master)](https://travis-ci.org/mkinney/flask_web)

#Background
Started from [dockerize-your-flask-application](https://runnable.com/docker/python/dockerize-your-flask-application)

#Development
Make sure the app works locally:

    virtualenv -p python3 venv
    source venv/bin/activate
    pip install -r requirements.txt
    python app.py

#Build

    docker build -t flask-tutorial:latest .

or

	make build


#Run

    docker run -d -p 5000:5000 flask-tutorial

or

    make run

#Test

Open [http://localhost:5000/](http://localhost:5000/)

Note: If you get an error "fixture 'host' not found", then be sure to activate your python virtual environment. (see Development above)

You can also run:

    make test

#Lint
Ensure that we do not have any pylint issues by running:

    make lint

#Clean

    docker ps -a
    # Note: Use whatever docker id was created
    docker kill 487
    docker rm 487

or

    make clean

#Tips
1. Create a git pre-commit hook to ensure code committed has some checks:

a. Create `.git/hooks/pre-commit`

``` bash
    #!/bin/bash
    make test
```

b. Ensure the script is executable:

    chmod +x .git/hooks/pre-commit
