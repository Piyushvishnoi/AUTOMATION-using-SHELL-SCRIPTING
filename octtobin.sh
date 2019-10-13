#!/bin/bash
#octal to decimal
read -p "enter octal no : " n
i=0
j=0
sum=0
while [ $n -gt $i ]
do
temp=$(( $n % 10 ))
temp=$(( $temp * $((8**$j)) ))
sum=$(( $sum + $temp ))
n=$(( $n / 10 ))
j=$(( $j + 1 ))
done
echo "decimal no is : $sum" 
#decimal to  binary
n=$sum
i=0
j=0
while [ $n -gt $i ]
do 
temp[$j]=$(( $n % 2 ))
n=$(( $n / 2 ))
j=$(( $j + 1 ))
done
#echo -n ${temp[@]} // for printing direct .. 
k=${#temp[@]}
j=0
while [ $k -gt $j ]
do 
f=$(( k - 1 ))
echo -n ${temp[$f]}
k=$(( k - 1 ))
done
