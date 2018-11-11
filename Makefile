build:
	docker build -t flask-tutorial:latest .

run:
	docker run -d -p 5000:5000 flask-tutorial

clean:
	@./clean_docker.bash

test:
	py.test -v test_app.py

lint:
	pylint *.py
	yamllint .*.yml

all: lint clean build run test

.PHONY: build run clean test lint
