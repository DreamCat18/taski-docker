FROM python:3.12-alpine

WORKDIR /app

COPY requirements.txt .


RUN pip install --upgrade setuptools pip

RUN pip install "cython<3.0.0" wheel
RUN pip install "pyyaml==5.3.1" 

RUN apk add build-base zlib-dev jpeg-dev

RUN pip install -r requirements.txt --no-cache-dir 

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "backend.wsgi"]