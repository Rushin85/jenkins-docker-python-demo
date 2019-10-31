FROM python:3.6

##TEST to fix requirements.txt error
RUN apt-get update \
    && apt-get install -y tar git curl nano wget dialog net-tools build-essential \
    && apt-get install --no-install-recommends -y -q python3 python3-pip python3-dev \
    && apt-get install -y libxml2-dev libxslt-dev python-dev zlib1g-dev
    
# Where the project files will be installed and tested inside the container
WORKDIR /tmp/app

# Copy the project files to the WORKDIR
COPY requirements.txt requirements.txt

# Setup the venv and install pyinstaller
RUN python -m venv /tmp/venv && \ 
. /tmp/venv/bin/activate && \
pip install -r requirements.txt

