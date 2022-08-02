#!/bin/bash
# @Author: nguyen
# @Date:   2022-07-07 14:54:44
# @Last Modified by:   nguyen
# @Last Modified time: 2022-07-07 16:48:23

# List file or directy level 1 also remove "./" in path file

echo 'Result Find:'

# solution 1:
find . -type f -not -path '*/.*' | sed 's|^./||'

# solution 2:
find . -type f -not -path '*/.*' | echo `sed 's|^./||'`

# solution 3:
find ~+ -type f -not -path '*/.*'

# solution 4:
find "$(cd ..; pwd)" -type f -not -path '*/.*'

# or find "$(pwd -P)" -type f -not -path '*/.*'
# or find `pwd -P` -type f -not -path '*/.*'

# solution 5:
find .. -type f -not -path '*/.*' -exec readlink -f {} \;

# solution 6:
find "${PWD%/*}" -type f -not -path '*/.*'

# solution 7:

find . -type f -printf "%f\n"