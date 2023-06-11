#!/bin/bash

# Run bash in magepow server
ssh magepow bash

# Print command script before executing
# https://stackoverflow.com/questions/5750450/how-can-i-print-each-command-before-executing
bash -x myscript.sh

# set -x is fine, but if you do something like:

# set -x;
# command;
# set +x;
# it would result in printing

# + command
# + set +x;
# You can use a subshell to prevent that such as:

# (set -x; command)