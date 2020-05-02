#!/bin/bash
# author: simran
# this script creates new bash script, sets permissions and more

# is there an argument?

if [[ ! $1 ]]; then
    echo "missing arguments="
    exit 1
fi

bindir="${HOME}/bin"
filename="${bindir}/$1"

if [[ -e $filename ]]; then
    echo "File ${filename} already exists"
    exit 1
fi