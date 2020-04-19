#!/bin/bash
n=153
num=$n
j=0
res=0
mul=1
k=10 
while [ $num -gt $j ]
do
rem=` expr  $num %  $k `
mul=` expr  $rem \* $rem \* $rem `
res=` expr  $res + $mul `
num=` expr  $num / $k `
done
if [ $res -eq $n ]
then 
echo " $n is an armstrong no"
else
echo "$n not an armstrong no"
fi
