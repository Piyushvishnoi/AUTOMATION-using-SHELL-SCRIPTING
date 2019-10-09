#!/bin/bash
i=0
read -p "command: " A
res= $A
b=` echo $? `
echo $b
if [ $b -eq $i ]
then 
echo "command is right"
else
echo "comand is wrong"
fi

