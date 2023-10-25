#!/bin/bash

docker run --name openbgpd \
           --volume /path/to/openbgpd/conf/bgpd.conf:/etc/bgpd/bgpd.conf \
           --volume /path/to/openbgpd/run:/run/bgpd \
           --volume /path/to/openbgpd/rpki-client:/var/lib/rpki-client \
           --detach openbgpd/openbgpd:latest