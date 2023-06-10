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
