#!/bin/bash
# @Author: nguyen
# @Date:   2022-07-07 14:54:44
# @Last Modified by:   nguyen
# @Last Modified time: 2022-07-07 16:48:23

# https://stackoverflow.com/questions/43171648/sed-gives-sed-cant-read-no-such-file-or-directory
# For support on both OSX and Linux, I use a simple if check to see if the bash script is running on OSX or Linux, and adjust the command's -i argument based on that.

if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' -e 's|$iconPath|images-theme-dark/$iconfile|g' "{}"
else
  sed -i -e 's|$iconPath|images-theme-dark/$iconfile|g' "{}"
fi


SEDOPTION=
if [[ "$OSTYPE" == "darwin"* ]]; then
  SEDOPTION="-i ''"
fi

sed $SEDOPTION "/^*/d" ./file