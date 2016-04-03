FROM debian:jessie
MAINTAINER T. Mieulet <>

RUN apt-get update && \
    apt-get install -y openconnect  && \
    apt-get clean 
COPY exe.sh /exe.sh
RUN chmod 0755 /exe.sh

ENTRYPOINT ["/exe.sh"]
