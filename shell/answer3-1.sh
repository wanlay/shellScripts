#!/usr/bin/env bash

for i in `seq 255`
do
    ping -c 2 -w 2 10.190.23.$i > /dev/null
    if (($? == 0 ));then
        echo -e "\033[32;40m 10.190.23.$i is UP.\033[0m"
    else
        echo -e "\033[31;40m 10.190.23.$i is Down.\033[0m"
    fi
done