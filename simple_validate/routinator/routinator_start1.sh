#!/bin/bash


systemctl enable routinator

#rewrite executer of /usr/lib/systemd/system/routinator.service 
sed -i -e 's/User=routinator/User=root/g' /usr/lib/systemd/system/routinator.service

mkdir /tal
routinator --config /etc/routinator/routinator.conf --extra-tals-dir=tal config
sed -i -e 's/rtr-listen = \["127.0.0.1:3323"\]/rtr-listen = \["192.168.1.1:3323"\]/g' /etc/routinator/routinator.conf
sed -i -e 's/http-listen = \["127.0.0.1:8323"\]/http-listen = \["192.168.1.1:8323"\]/g' /etc/routinator/routinator.conf
echo "extra-tals-dir = \"/tal\" " >> /etc/routinator/routinator.conf

systemctl start rsyslog

#systemctl start routinator

echo -e "10.0.0.1\tkrill.example.org" >> /etc/hosts

curl --insecure http://krill.example.org/ta/ta.tal >> /tal/ta.tal

curl --insecure http://krill.example.org/ta/cert.pem >> cert.pem

curl --insecure http://krill.example.org/ta/rootCA.crt >> rootCA.crt
