# Base Image (snapshot of dependencies needed for python applications)
FROM python:3.10-slim-bullseye

# Install OS dependencies while avoiding unneeded caching/installs and keeping things secure
RUN apt-get update \
    && apt-get install -y --no-install-recommends --no-install--suggests \
    && pip install --no-cache-dir --upgrade pip

# Create working directory where files will live
WORKDIR /app

# We separate the COPY commands into two layers to avoid constantly rebuilding every layer- dependency installation and then app changes.
COPY ./requirements.txt /app
RUN pip install --no-cache-dir --requirement /app/requirements.txt

# Source code changes
COPY . /app/

# Listens on this exposed port
EXPOSE 5000

# Instruction used to run container every time the image is run- in this case auth server.
CMD ["python3", "server.py"]