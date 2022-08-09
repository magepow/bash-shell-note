#!/bin/bash
# @Author: nguyen
# @Date:   2022-07-07 14:54:44
# @Last Modified by:   Alex Dong
# @Last Modified time: 2022-08-09 18:44:50

# https://stackoverflow.com/questions/43171648/sed-gives-sed-cant-read-no-such-file-or-directory
# For support on both OSX and Linux, I use a simple if check to see if the bash script is running on OSX or Linux, and adjust the command's -i argument based on that.


for i in "$@"; do
    echo "$i"
done

# or 

for (( i=$#;i>0;i-- ));do
        echo "${!i}"
done
