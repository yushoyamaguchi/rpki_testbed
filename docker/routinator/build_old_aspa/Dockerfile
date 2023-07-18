FROM ubuntu:20.04

RUN apt -y update
RUN apt -y install rsyslog curl wget git
RUN apt -y install build-essential
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN bash /root/.cargo/env
RUN git clone https://github.com/NLnetLabs/routinator.git
WORKDIR /routinator
RUN git checkout 2b450d0 -b asap20230601
#RUN /root/.cargo/bin/cargo build --release --locked --features aspa
RUN /root/.cargo/bin/cargo build

WORKDIR /
ENV PATH="/routinator/target/debug:${PATH}"
ENV PATH="/routinator/target/release:${PATH}"


RUN apt -y install iproute2 iputils-ping net-tools systemctl rsync
RUN apt -y install tcpdump nmap traceroute vim

