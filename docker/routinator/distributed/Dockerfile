FROM ubuntu:20.04

RUN apt -y update
RUN apt -y install iproute2 iputils-ping net-tools systemctl rsync sudo
RUN apt -y install tcpdump nmap traceroute rsyslog
RUN apt -y install ca-certificates curl gnupg lsb-release wget vim
RUN apt -y install openssl libnss3-tools

RUN sed -i -e '$a deb [arch=amd64] https://packages.nlnetlabs.nl/linux/debian/ stretch main' /etc/apt/sources.list
#RUN sed -i -e '$a deb [arch=amd64] https://packages.nlnetlabs.nl/linux/debian/ buster main' /etc/apt/sources.list
RUN sed -i -e '$a deb [arch=amd64] https://packages.nlnetlabs.nl/linux/debian/ bullseye main' /etc/apt/sources.list
RUN sed -i -e '$a deb [arch=amd64] https://packages.nlnetlabs.nl/linux/ubuntu/ xenial main' /etc/apt/sources.list
RUN sed -i -e '$a deb [arch=amd64] https://packages.nlnetlabs.nl/linux/ubuntu/ bionic main' /etc/apt/sources.list
RUN sed -i -e '$a deb [arch=amd64] https://packages.nlnetlabs.nl/linux/ubuntu/ focal main' /etc/apt/sources.list

RUN wget -qO- https://packages.nlnetlabs.nl/aptkey.asc | apt-key add -


RUN apt -y update
RUN apt -y install routinator



