#!/bin/bash
array=(1 2 3)
for i in "${array[@]}"
do
echo $i
#read array[$i]
#i= `expr ($i+1)`
done
