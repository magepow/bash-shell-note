#!/bin/bash
# while do
for d in ./*/ ; 
    do (
        cd "$d" && pwd
    ); 
done