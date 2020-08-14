# Educa Project

> This project created by following Antonio Mele's book `Django 3 by example`

## Requirements

- Python 3.7
- Docker
- Docker-compose

## How to run

### Development

Uses the default Django development server and the SQLite3 database.

> Update the environment variables in the corresponding env files before running

```sh
docker-compose -f docker/dev.yaml up
```

Test it out at http://localhost:8000. The project folder is mounted into the container and your code changes apply automatically.

### Production

Uses gunicorn + nginx and the PostgreSQL database.

> Update the environment variables in the corresponding env files before running

```sh
docker-compose -f docker/prod.yaml up
```

Test it out at http://localhost:1337. No mounted folders. To apply changes, the image must be re-built.
