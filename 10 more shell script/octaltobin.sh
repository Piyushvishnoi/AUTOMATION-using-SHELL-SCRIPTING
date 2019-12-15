#!/bin/bash
n=20
echo "octal no is:" $n
j=0
res=0
k=2
i=1
c=10
rem=0
while [ $n -gt $j ]
do 
rem=` expr  $n % $k `
rem=` expr  $rem \* $i `
res=` expr  $res + $rem `
i=` expr  $i \* $c `
n=` expr  $n / $k `
done
echo "binary no is: " $res
