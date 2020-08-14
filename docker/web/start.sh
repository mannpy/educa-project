#!/bin/bash

set -euo pipefail

pipenv run python manage.py migrate
pipenv run python manage.py collectstatic --no-input --no-default-ignore

if [[ "$DJANGO_EXECUTION_ENVIRONMENT" = "DEVELOPMENT" ]]; then
  pipenv run python manage.py runserver 0.0.0.0:8000
else
  pipenv run gunicorn -w 2 -k gevent -b "0.0.0.0:8000" \
    --log-level debug --access-logfile - educa.wsgi:application
fi