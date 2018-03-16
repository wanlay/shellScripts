#!/usr/bin/env bash

for i in `seq -w 10`
do
    useradd oldboy$i
    pass=`echo $RANDOM | md5sum | cut -c 1-8`
    echo $pass | passwd --stdin oldboy-$i
    echo oldboy$i:$pass >> psswd.txt
done 