#!/bin/bash
#n=1254
read -p "enter decimal no: " n
temp1=$n
i=0
j=0
while [ $n -gt $i ]
do 
temp[$j]=$(( $n % 16 ))
echo ${temp[$j]}
j=$(( $j + 1 ))
n=$(( n / 16 )) 
done
a=${#temp[@]}
echo $a
b1=10
b2=11
b3=12
b4=13
b5=14
b6=15
echo "hexadecimal of $temp1 is: "
while [ $a -gt $i ]
do
f=$(( $a - 1 ))
#echo $f
if [ ${temp[$f]} -eq $b1 ]
then
temp[$f]='A'
elif [ ${temp[$f]} -eq $b2 ]
then
temp[$f]='B'
elif [ ${temp[$f]} -eq $b3 ]
then
temp[$f]='C'
elif [ ${temp[$f]} -eq $b4 ]
then
temp[$f]='D'
elif [ ${temp[$f]} -eq $b5 ]
then
temp[$f]='E'
elif [ ${temp[$f]} -eq $b6 ]
then
temp[$f]='F'
fi
echo -n ${temp[$f]}
a=$(( $a - 1 ))
done
