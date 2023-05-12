#!/bin/bash
# Find string in file and extension file

# Find all file exist string
grep -rnw './' -e 'string_need_find'

# Find only file .php  exist 'string_need_find'
grep -rnw './' --include \*.php -e 'string_need_find'
