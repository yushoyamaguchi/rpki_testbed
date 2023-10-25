#!/bin/bash


mkdir /tal


systemctl start rsyslog

#systemctl start routinator

echo -e "10.0.0.1\tkrill.example.org" >> /etc/hosts

curl --insecure http://krill.example.org/ta/ta.tal >> /tal/ta.tal

curl --insecure http://krill.example.org/ta/ta.cer >> /ta.cer

curl --insecure http://krill.example.org/ta/cert.pem >> cert.pem

curl --insecure http://krill.example.org/ta/rootCA.crt >> rootCA.crt