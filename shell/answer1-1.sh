#!/usr/bin/env bash

# target directory
dir=$HOME/wwl

if [ ! -d $dir ];then
    mkdir -p $dir
fi

for i in `seq 10`
do
    str=`echo $RANDOM | md5sum | cut -c 1-10`
    touch $dir/${str}_oldboy.html
done