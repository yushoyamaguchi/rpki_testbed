#!/bin/bash

function build_docker() {
    find . -name Makefile -type f -print0 | while IFS= read -r -d $'\0' line; do
        dir=$(dirname "$line")
        cd "$dir" || exit
        make docker-build
        cd - || exit
    done
}

trap "exit" INT

build_docker
