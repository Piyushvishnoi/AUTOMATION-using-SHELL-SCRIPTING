#!/bin/bash
array=('1' 'F' 'A')
i=0
j=3
while [ $i -lt $j ]
do
echo ${array[$i]}
i=` expr  $i + 1 `
done
i=0
j=3
b=""
while [ $i -lt $j ]
do 
case ${array[$i]} in 
0) b+="0000";;
1) b+="0001";;
#echo $b
2)b+="0010";;
3)b+="0011";;
4)b+="0100";;
5)b+="0101";;
6)b+="0110";;
7)b+="0111";;
8)b+="1000";;
9)b+="1001";;
A) b+="1010";;
#echo $b
B)b+="1011";;
#echo $b
C)b+="1100";;
D)b+="1101";;
E)b+="1110";;
F)b+="1111";;
esac
i=` expr  $i + 1 `
done
echo $b





 
