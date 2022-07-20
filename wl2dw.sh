#!/usr/bin/env bash

# seq 1111 6666 | grep -v 7 | grep -v 8 | grep -v 9 | grep -v 0  # 1296
# seq 11111 66666 | grep -v 7 | grep -v 8 | grep -v 9 | grep -v 0  # 7776

if [ $(wc -l ${1} | tr -s ' ' | cut -d ' ' -f 2) -le 1296 ]; then
    paste -d'\t' <(seq 1111 6666 | grep -v 7 | grep -v 8 | grep -v 9 | grep -v 0) ${1}
else
    paste -d'\t' <(seq 11111 66666 | grep -v 7 | grep -v 8 | grep -v 9 | grep -v 0) ${1}
fi
