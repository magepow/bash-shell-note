#!/bin/bash
# https://unix.stackexchange.com/questions/34325/sorting-the-output-of-find-print0-by-piping-to-the-sort-command
find . -print0 | sort -z | xargs -r0 