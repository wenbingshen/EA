FROM python:3.6

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install build-essential python3.6 python3.6-dev python3-pip libssl-dev git

WORKDIR /home/elastalert

ADD requirements*.txt ./
RUN pip3 install -r requirements-dev.txt
