FROM ubuntu:18.04

RUN apt-get update -y

RUN apt-get install -y python-pip python3-pip python-dev python3-dev build-essential

RUN apt-get install -y libsm6 libxext6 libxrender-dev

ADD ./src /flask-app

WORKDIR /flask-app

RUN pip3 install -r requirements.txt

CMD ["python3 main.py"]