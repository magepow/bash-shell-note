#!/bin/bash

input=".env"
while IFS= read -r line
do
    echo "$line"
done < "$input"


# Read line by line from a string or result command

databases=`mysql -uroot -pXXXXXX -e "SHOW DATABASES LIKE 'wp2cart%'"`;
# echo $databases

printf %s "$databases" | while IFS= read -r line
do
    echo "$line"
done


while IFS= read -r line
do
    echo "$line"
done < <(mysql -uroot -pXXXXXX -e "SHOW DATABASES LIKE 'wp2cart%'")


listDatabase=""
while IFS= read -r;
do
    ((i++)) && listDatabase="${listDatabase} $REPLY";
done < <(mysql -uroot -pXXXXXX -e "SHOW DATABASES LIKE 'wp2cart%'")

IFS=' ' #setting space as delimiter
read -ra ADDR <<<"$listDatabase" #reading str as an array as tokens separated by IFS

for i in "${ADDR[@]}"; #accessing each element of array
do
    echo "$i"
done
