FROM python:3.11-slim

WORKDIR /app

RUN apt-get update \
    && apt-get install -y make \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt Makefile ./

RUN make install

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]