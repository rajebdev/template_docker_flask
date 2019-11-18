FROM ubuntu:18.04

RUN apt-get update -y

RUN apt-get install -y python-pip python3-pip python-dev python3-dev build-essential

RUN apt-get install -y libsm6 libxext6 libxrender-dev

WORKDIR /opt/flask_app

RUN mkdir -p /opt/flask_app

ADD ./src /opt/flask_app

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["entrypoint.sh"]