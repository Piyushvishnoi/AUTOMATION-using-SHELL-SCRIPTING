#!/bin/bash
n=28
i=1
j=0
sum=0
while [ $i -lt $n ]
do 
if [ ` expr $n % $i ` -eq $j ]
then
sum=` expr  $i + $sum `
fi
i=` expr  $i + 1 `
done
if [ $sum -eq $n ]
then
echo "$n is a perfect no"
else
echo "$n is not a perfect no"
fi
