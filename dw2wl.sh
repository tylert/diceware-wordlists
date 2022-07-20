#!/usr/bin/env bash

# Convert a diceware wordlist into a flat wordlist

files="${1}"

if [ -z "${files}" ] ; then
    echo "You need to specify a file or files to turn into a wordlist"
    exit 1
fi

for file in ${files}; do
    cat ${file} | cut -f 2 > ${file/dw/wl}
done
