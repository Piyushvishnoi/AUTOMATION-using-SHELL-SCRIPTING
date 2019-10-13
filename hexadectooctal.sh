#!/bin/bash
#hexadecimal to decimal
read -p "hexadecimal no is: " n
a=$((16#$n))
echo $a
#decimal to octal
n=$a
i=0
j=0
while [ $n -gt $i ]
do 
temp[$j]=$(( $n % 8 ))
n=$(( $n / 8 ))
j=$(( $j + 1 ))
done 
k=${#temp[@]}
j=0
while [ $k -gt $j ]
do 
f=$(( k - 1 ))
echo -n ${temp[$f]}
k=$(( k - 1 ))
done




 
