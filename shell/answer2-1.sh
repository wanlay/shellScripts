#!/usr/bin/env bash

dir=$HOME/wwl
str=(`ls $dir`)
for i in `seq 10`
do  
    tmp1=${str[((i-1))]} #原始名
    tmp2=`echo $tmp1 | sed "s/oldboy/oldgirl/g" |  sed "s/html/HTML/g"`
    mv $dir/$tmp1 $dir/$tmp2
done