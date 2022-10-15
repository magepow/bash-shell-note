#!/bin/bash
# while do
find . -type d ! -name . | sort --version-sort | while read p; 
    do (
        echo "Directory path ${p}"
        # do more somthing
    ); 
done 

# use read line from file:
while read line
do
  echo $line
done < ./readfile.sh


valid=true
count=1
while [ $valid ]
do
echo $count
if [ $count -eq 5 ];
then
break
fi
((count++))
done