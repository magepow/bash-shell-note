#!/bin/bash
# Find string in file and extension file
# https://stackoverflow.com/questions/16956810/how-can-i-find-all-files-containing-specific-text-string-on-linux

# Find all file exist string
grep -rnw './' -e 'string_need_find'

# Find only file .php  exist 'string_need_find'
grep -rnw './' --include \*.php -e 'string_need_find'


grep --include=\*.{php,html} -rnw '/path/to/somewhere/' -e "string_need_find"

grep --exclude=\*.o -rnw '/path/to/somewhere/' -e "pattern"