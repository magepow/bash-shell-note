#!/bin/bash
# @Author: nguyen
# @Date:   2022-07-07 14:54:44
# @Last Modified by:   Alex Dong
# @Last Modified time: 2022-08-09 18:44:50

# https://stackoverflow.com/questions/32647170/print-bash-arguments-in-reverse-order

for i in "$@"; do
    echo "$i"
done

# or 

for (( i=$#;i>0;i-- ));do
        echo "${!i}"
done
