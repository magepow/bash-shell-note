#!/bin/bash
# slipt string
theme="Alothemes/digic"
theme="${theme////\\}" 
echo ${theme}
strArr=(${theme/"\\"/ })
echo ${strArr[0]}  
echo ${strArr[1]}

theme="digic"
theme="${theme////\\}" 
echo ${theme}
strArr=(${theme/"\\"/ })
echo ${strArr[0]}  
echo ${strArr[1]}