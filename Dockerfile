FROM python:3.11-slim

WORKDIR /app

RUN apt-get update \
    && apt-get install -y make \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt Makefile ./

RUN make deps

COPY . .

CMD uvicorn main:app --host 0.0.0.0 --port ${PORT:-8080}