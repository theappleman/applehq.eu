FROM debian:9

MAINTAINER Daniel Cordero <docker@xxoo.ws>

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y libmojolicious-perl

WORKDIR /app

ADD . /app

EXPOSE 8080
CMD []
ENTRYPOINT ["/usr/bin/hypnotoad", "-f"]

