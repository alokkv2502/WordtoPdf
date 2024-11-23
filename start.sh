#!/bin/bash
export PORT=3000

export ALLOWED_HOSTS='.glitch.me'

# Apply migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Start Gunicorn server
gunicorn converter.wsgi --bind 0.0.0.0:$PORT
