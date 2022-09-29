#!/bin/bash
# https://unix.stackexchange.com/questions/171677/cd-into-all-directories-execute-command-on-files-in-that-directory-and-return
for d in ./*/ ; 
    do (
        cd "$d" && pwd
    ); 
done