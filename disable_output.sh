#!/bin/bash
# https://stackoverflow.com/questions/18062778/how-to-hide-command-output-in-bash
{
    export NAME=VALUE
    echo 'abc'
    echo 'cd'
} &> /dev/null

echo $NAME


function gitListChange()
{
    git add . &> /dev/null
    git diff --name-only HEAD | while read gitChange; 
        do (
            echo ${gitChange}
        ); 
    done
    # &> /dev/null => disable output
    git reset &> /dev/null
}

ListChange="$(gitListChange)"