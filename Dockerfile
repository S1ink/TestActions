FROM i386/debian:buster

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /home/tmp
COPY . /home/tmp
RUN ls -l
RUN chmod +x $WORKDIR/run.sh
ENTRYPOINT [ "/bin/bash", "$WORKDIR/run.sh" ]