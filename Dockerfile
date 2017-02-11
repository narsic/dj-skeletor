FROM ubuntu
RUN apt-get update
RUN apt-get install python2.7 make python-pip libssl-dev redis-server -y

RUN alias python=python2.7
WORKDIR /project
ADD requirements requirements
ADD Makefile .
RUN make prod-setup
