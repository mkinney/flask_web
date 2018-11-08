see https://runnable.com/docker/python/dockerize-your-flask-application

Make sure it works locally:

    virtualenv -p python3 venv
    source venv/bin/activate
    pip install -r requirements.txt
    python app.py

Build it:

    docker build -t flask-tutorial:latest .
    docker run -d -p 5000:5000 flask-tutorial

Test it:

    # click on: http://localhost:5000/


