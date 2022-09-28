#!/bin/bash
# slipt string
str="https://github.com/magepow/magento-2-mega-menu.git menu"
strArr=(${str//" "/ })
echo ${strArr[0]}  
echo ${strArr[1]}  