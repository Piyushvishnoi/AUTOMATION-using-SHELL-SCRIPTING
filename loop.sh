#!/bin/bash
for i in 1,2,3,4 
do 
echo $i
done
a=hello
while [ :"$a" != "bye": ] 
do
read a
echo $a
done
exit 0
