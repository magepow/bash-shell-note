#!/bin/bash
# @Author: nguyen
# @Date:   2022-07-07 14:54:44
# @Last Modified by:   nguyen
# @Last Modified time: 2022-07-07 16:48:23

# List file or directy level 1 also remove "./" in path file

echo 'Result For in:'

for i in ./*
do
    echo $i
done 

echo 'Result Find File:'
files=`find . -type f -not -path '*/.*' | sort --version-sort | sed 's|^./||'`
echo $files

echo 'Result Find Directory:'
files=`find . -type d ! -name . | sort --version-sort | sed 's|^./||'`
echo $files

