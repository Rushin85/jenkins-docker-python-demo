FROM python:3.6

# Where the project files will be installed and tested inside the container
WORKDIR /tmp/app

# Copy the project files to the WORKDIR
COPY requirements.txt requirements.txt

RUN apt-get update && apt-get install apt-transport-https
RUN pip3 install --no-cache-dir pipenv \ pip3 instgall --upgrade pip3

# Setup the venv and install pyinstaller
RUN python -m venv /tmp/venv && \
    . /tmp/venv/bin/activate && \
    pip3 install --no-cache-dir -r requirements.txt
