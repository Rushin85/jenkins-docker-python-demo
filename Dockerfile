FROM python:3.6

    && apt-get install -y tar git curl nano wget dialog net-tools build-essential \
    && apt-get install --no-install-recommends -y -q python3 python3-pip python3-dev \
    && apt-get install -y libxml2-dev libxslt-dev python-dev zlib1g-dev
ADD . /bot
WORKDIR /bot
RUN pip3 install -r requirements.txt

CMD ["python3", "app.py"]
