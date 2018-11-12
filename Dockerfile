FROM python:3.7-slim

LABEL maintainer="mike.kinney@gmail.com"

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . /app

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]
