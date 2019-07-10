#!/usr/bin/env bash

# wget https://www.eff.org/files/2016/07/18/eff_large_wordlist.txt
# wget https://www.eff.org/files/2016/09/08/eff_short_wordlist_1.txt
# wget https://www.eff.org/files/2016/09/08/eff_short_wordlist_2_0.txt

for wordlist in *.txt; do
    cat ${wordlist} | cut -f 2 > ${wordlist}.wordlist
    rename -f 's/_wordlist//g' *.wordlist
    rename -f 's/\.txt//g' *.wordlist
done
