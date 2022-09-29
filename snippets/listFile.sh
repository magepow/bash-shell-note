#!/bin/bash
# @Author: nguyen
# @Date:   2022-07-07 14:54:44
# @Last Modified by:   nguyen
# @Last Modified time: 2022-07-07 16:48:23

# not use for in with result command find because can error in cash name container space

function ListFile()
{
    echo 'Result find non recursively:'
    files=`find . -maxdepth 1 -type f -not -path '*/.*' | sed 's|^./||'`
    echo $files
}

function ListFileHidden()
{
    echo 'Result find Hidden Files:'
    files=`find . -type f -name ".*" `
    echo $files
}

function ListFileRecursive()
{
    echo 'Result find recursively:'
    files=`find . -type f -not -path '*/.*' | sed 's|^./||'`
    echo $files
}

function ListFileRecursive()
{
    echo 'Result find recursively:'
    files=`find . -type f -not -path '*/.*' | sed 's|^./||'`
    echo $files
}

ListFile
ListFileHidden
ListFileRecursive