FROM i386/debian:buster

ENV DEBIAN_FRONTEND noninteractive

COPY . /work/

CMD [ "/bin/bash", "-c", "/work/run.sh" ]