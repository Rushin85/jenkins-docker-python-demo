FROM python:3.6

# Where the project files will be installed and tested inside the container
WORKDIR /tmp/app

# Copy the project files to the WORKDIR
COPY requirements.txt requirements.txt

# Setup the venv and install pyinstaller
RUN python -m venv /tmp/venv && \
    . /tmp/venv/bin/activate && \
    pip install -r requirements.txt
RUN apt-get update \
 && apt-get install -y \
        swig \
        python-dev \
        libssl-dev \
 && rm -rf /var/lib/apt/lists/*
