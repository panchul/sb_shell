#!/usr/bin/env bash
#    $ ls
#    tmp
#    $ sl
#    pmt

LEN=$(ls "$@"|wc -L)
ls "$@"|rev| while read -r line
do
  printf "%${LEN}.${LEN}s\\n" "$line" | sed 's/^\(\s\+\)\(\S\+\)/\2\1/'
done

