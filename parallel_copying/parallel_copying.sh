#!/bin/bash
#
# parallel_copying.sh dir_from dir_to
#


dir1=$1
dir2=$2

for file in $dir1/*
  do
    cp $file $dir2 &
  done

