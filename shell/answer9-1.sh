#!/usr/bin/env bash

input="I am oldboy teacher welcome to oldboy training class. "
arr=($input)
# 数组中所有元素${arr[*]}
for var in  ${arr[*]}
do
# ${#var} 字符串长度
    if [ ${#var} -le 6 ];then
        echo $var
    fi
done
