#!/bin/bash
# function
# https://stackoverflow.com/questions/37102281/bash-script-err-command-not-found
# echo error and exit
err() { echo "$*" >&2; exit 1; }

err "This message error"