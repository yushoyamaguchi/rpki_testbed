FROM ubuntu:20.04

RUN apt -y update
RUN apt -y install iproute2 iputils-ping net-tools systemctl rsync sudo
RUN apt -y install tcpdump nmap traceroute vim strace less
RUN apt -y install ca-certificates gnupg lsb-release
RUN apt -y install python3 nginx certbot python3-certbot-nginx
RUN apt -y install openssl libnss3-tools rsyslog libssl-dev
RUN apt -y install rsyslog curl wget git build-essential pkg-config

#systemd入れたらなんかバグったのでjournalctl使えない

RUN curl -s https://api.github.com/repos/FiloSottile/mkcert/releases/latest | grep browser_download_url | grep linux-amd64 | cut -d '"' -f 4 | wget -qi - \
    && mv mkcert-v*-linux-amd64 mkcert \
    && chmod a+x mkcert \
    && mv mkcert /usr/local/bin/


RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN bash /root/.cargo/env

RUN git clone https://github.com/NLnetLabs/krill.git
WORKDIR /krill
RUN /root/.cargo/bin/cargo build --release --locked

ENV PATH="/krill/target/debug:${PATH}"
ENV PATH="/krill/target/release:${PATH}"

RUN sed -i -e '$a deb [arch=amd64] https://packages.nlnetlabs.nl/linux/debian/ stretch main' /etc/apt/sources.list
RUN sed -i -e '$a deb [arch=amd64] https://packages.nlnetlabs.nl/linux/debian/ buster main' /etc/apt/sources.list
RUN sed -i -e '$a deb [arch=amd64] https://packages.nlnetlabs.nl/linux/debian/ bullseye main' /etc/apt/sources.list
RUN sed -i -e '$a deb [arch=amd64] https://packages.nlnetlabs.nl/linux/ubuntu/ xenial main' /etc/apt/sources.list
RUN sed -i -e '$a deb [arch=amd64] https://packages.nlnetlabs.nl/linux/ubuntu/ bionic main' /etc/apt/sources.list
RUN sed -i -e '$a deb [arch=amd64] https://packages.nlnetlabs.nl/linux/ubuntu/ focal main' /etc/apt/sources.list
RUN sed -i -e '$a deb [arch=amd64] http://security.ubuntu.com/ubuntu bionic-security main' /etc/apt/sources.list

RUN wget -qO- https://packages.nlnetlabs.nl/aptkey.asc | apt-key add -

RUN apt -y update
RUN apt -y install krill-sync libssl1.0.0


