#!/usr/bin/env bash

# target directory
dir=$HOME/wwl

if [ ! -d $dir ];then
    mkdir -p $dir
fi

letter=(`echo {a..z}`) #包含26个字母的数组
tmp="" #保存10个字母

for i in `seq 10`
do
    for i in `seq 10`
    do
        str=${letter[$(($(($RANDOM%26))+1))]}
        tmp=$tmp$str
    done
    touch $dir/${tmp}_oldboy.html
    tmp=""
done