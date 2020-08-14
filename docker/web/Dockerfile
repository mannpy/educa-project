FROM python:3.7

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install some useful ubuntu utilitites
RUN apt-get update && apt-get install -y --no-install-recommends netcat

# Copy the code and install all dependencies
COPY . /code
WORKDIR /code

# Install website dependencies
RUN pip install pipenv
RUN pipenv install
RUN pipenv run pip install -r docker/requirements.txt

# Setup entrypoint for the container
ENTRYPOINT ["/code/docker/web/entrypoint.sh"]