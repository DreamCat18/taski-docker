FROM python:3.12-slim

WORKDIR /app


RUN apt-get update && apt-get install -y python3-dev gcc && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY . .

CMD ["python", "manage.py", "runserver", "0:8000"]
