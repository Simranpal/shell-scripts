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

# -e checks file exists
if [[ -e $filename ]]; then
    echo "File ${filename} already exists"
    exit 1
fi

#check if bin directory exists
if [[ ! -d $bindir ]]; then
    if mkdir "$bindir"; then
        echo "created ${bindir}"
    else
        echo "could not create ${bindir}"
        exit 1
    fi
fi

exit 0