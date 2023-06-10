#!/bin/bash
# Find string in file and extension file
# https://stackoverflow.com/questions/16956810/how-can-i-find-all-files-containing-specific-text-string-on-linux
# https://superuser.com/questions/585391/on-linux-how-can-i-find-all-files-that-contain-a-string-and-delete-them
# https://stackoverflow.com/questions/52451220/find-files-containing-certain-string-and-copy-to-directory-using-linux
# https://unix.stackexchange.com/questions/15308/how-to-use-find-command-to-search-for-multiple-extensions

# Find all file exist string
grep -rnw './' -e 'string_need_find'

# Find only file .php  exist 'string_need_find'
grep -rnw './' --include \*.php -e 'string_need_find'


grep --include=\*.{php,html} -rnw '/path/to/somewhere/' -e "string_need_find"

grep --exclude=\*.o -rnw '/path/to/somewhere/' -e "pattern"


grep -lrIZ foo . | xargs -0 rm -f --


cp *api.envato.php* /root/a/

find ./ -type f -exec grep -lr "api.envato.php" {}  \; -exec cp -r {} /home/backup/ \;

find ./ -type f  -name "*.php" -exec grep -lr "api.envato.php" {}  \; -exec cp -r {} /home/backup/ \;
find ./ -type f  -name "*.php_" -exec grep -lr "api.envato.php" {}  \; -exec cp -r {} /home/backup/ \;


#https://stackoverflow.com/questions/4709912/how-to-make-grep-only-match-if-the-entire-line-matches
# Find matches line
grep -Fx ABB.log a.tmp