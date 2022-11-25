FROM i386/debian:buster

ENV DEBIAN_FRONTEND noninteractive

COPY ./run.sh /root/run.sh