FROM i386/debian:buster

ENV DEBIAN_FRONTEND noninteractive

COPY . /work/
RUN chmod +x /work/run.sh
ENTRYPOINT [ "/bin/bash", "/work/run.sh" ]