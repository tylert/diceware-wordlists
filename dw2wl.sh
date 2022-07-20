#!/usr/bin/env bash

files="${1}"

if [ -z "${files}" ] ; then
    echo "You need to specify a file or files to turn into a wordlist"
    exit 1
fi

for wordlist in ${files}; do
    cat ${wordlist} | cut -f 2 > ${wordlist}.wordlist
    rename -f 's/_wordlist//g' *.wordlist
    rename -f 's/\.txt//g' *.wordlist
done
