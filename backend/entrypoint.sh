#!/bin/bash

# Wait for postgres to be ready
until pg_isready -h db -p 5432 -U postgres; do
  echo "Waiting for postgres..."
  sleep 2
done

# Run migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Start gunicorn
exec gunicorn --bind 0.0.0.0:8000 backend.wsgi
