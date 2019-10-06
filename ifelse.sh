#!/bin/bash
a=2
b=1
if [ $a -gt $b ]
then
echo "$a is greater than $b"
elif [ $a -lt $b ]
then 
echo "$a is less than $b"
else
echo "$a is equal to $b"
fi
exit 0
