#!/bin/bash
# @Author: nguyen
# @Date:   2022-07-07 14:54:44
# @Last Modified by:   nguyen
# @Last Modified time: 2022-07-07 16:48:23

function ListDir()
{
    echo 'Result find non recursively:'
    files=`find . -maxdepth 1 -type d -not -path '*/.*' | sed 's|^./||'`
    echo $files
}

function ListDirHidden()
{
    echo 'Result find Hidden directory:'
    files=`find . -type d -name ".*" `
    echo $files
}

function ListDirRecursive()
{
    echo 'Result find recursively:'
    files=`find . -type d -not -path '*/.*' | sed 's|^./||'`
    echo $files
}

ListDir
ListDirHidden
ListDirRecursive