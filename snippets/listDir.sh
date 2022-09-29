#!/bin/bash
# @Author: nguyen
# @Date:   2022-07-07 14:54:44
# @Last Modified by:   nguyen
# @Last Modified time: 2022-07-07 16:48:23

# not use for in with result command find because can error in cash name container space

function ListDir()
{
    echo 'Result find non recursively:'
    files=`find . -maxdepth 1 -type d ! -name . | sed 's|^./||'`
    echo $files
}

function ListDirHidden()
{
    echo 'Result find Hidden directory:'
    files=`find . -type d -name ".*" ! -name . `
    echo $files
}

function ListDirRecursive()
{
    echo 'Result find recursively:'
    files=`find . -type d ! -name . | sed 's|^./||'`
    echo $files
}

function ListDirRecursiveSameName()
{
    echo 'Result find Same Name recursively:'
    files=`find . -type d -name ".git" ! -name . | sed 's|^./||'`
    echo $files
}


ListDir
ListDirHidden
ListDirRecursive
ListDirRecursiveSameName