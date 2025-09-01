FROM python:3.12

WORKDIR /app

RUN apt-get update && apt-get install -y postgresql-client && rm -rf /var/lib/apt/lists/*

RUN pip install gunicorn==23.0.0

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY . .

COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
