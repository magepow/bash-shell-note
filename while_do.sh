#!/bin/bash
# while do
find . -type d ! -name . | while read p; 
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