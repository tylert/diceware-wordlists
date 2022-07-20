#!/usr/bin/env bash

# Convert a flat wordlist into a diceware wordlist

# 4 dice -> 1296 lines, 5 dice -> 7776 lines
# seq 1111 6666 | grep -v 7 | grep -v 8 | grep -v 9 | grep -v 0  # 1296 lines
# seq 11111 66666 | grep -v 7 | grep -v 8 | grep -v 9 | grep -v 0  # 7776 lines

files="${1}"

if [ -z "${files}" ] ; then
    echo "You need to specify a file or files to turn into a wordlist"
    exit 1
fi

for file in ${files}; do
    if [ $(wc -l ${file} | tr -s ' ' | cut -d ' ' -f 2) -le 1296 ]; then
        paste -d'\t' <(seq 1111 6666 | grep -v 7 | grep -v 8 | grep -v 9 | grep -v 0) ${file} > ${file/wl/dw}
    else
        paste -d'\t' <(seq 11111 66666 | grep -v 7 | grep -v 8 | grep -v 9 | grep -v 0) ${file} > ${file/wl/dw}
    fi
done
