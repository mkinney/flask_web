build:
	docker build -t flask-tutorial:latest .

run:
	docker run -d -p 5000:5000 flask-tutorial

clean:
	docker rm -f $(shell docker ps -a --filter ancestor=flask-tutorial -q)

test:
	py.test -v test_app.py

lint:
	pylint *.py

all: lint clean build run test

.PHONY: build run clean test lint
