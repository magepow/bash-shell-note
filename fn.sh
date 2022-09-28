#!/bin/bash
# function
function myFunc {
    result="do something param1: ${1} and param2: ${2}"
    echo $result
}

resultFn="$(myFunc 'value1' 'value2')"
echo $resultFn