#!/bin/bash
n=3
i=0
while [ $i -lt $n ]
do
read array[$i]
i=`expr  $i + 1`
done
#to print array
i=0
while [ $i -lt $n ]
do
echo ${array[$i]}
#i= $[ $i + 1 ]
i=` expr  $i + 1 `
done

