FROM debian:jessie
MAINTAINER T. Mieulet <>

RUN apt-get update && \
    apt-get install -y openconnect  && \
    apt-get clean 

RUN echo "${PASSWORD}" | openconnect --background --pid-file=/run/openconnect_vpn.pid ${args}
