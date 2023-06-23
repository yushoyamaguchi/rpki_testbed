#!/bin/bash

export KRILL_CLI_TOKEN=PassW0rd
export KRILL_CLI_MY_CA=testbed
export KRILL_CLI_SERVER=https://localhost:3000/
krillc roas update --add "192.168.1.0/24 => 65001"
krillc roas update --add "192.168.2.0/24 => 65002"