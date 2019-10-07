#!/bin/bash
a="1A2"
b="1A2"
c="1"
d="piyush"
e="vishnoi"
# = is used for string comparision
if [ $a = $b ]
then 
echo "strings are equal"
else
echo "strings are not equal"
fi
# -z will tell us the length of the string is zero or not
if [ -z $c ]
then 
echo "string length is zero"
else
echo "string length is not zero"
fi
# \> is used for comparision of two strings
if [ $d \> $e ]
then
echo "$d is greater than $e"
else
echo "$e is greater than $d"
fi

