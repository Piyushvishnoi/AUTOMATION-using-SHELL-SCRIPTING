#!/bin/bash
for command in ls pwd date
do
echo "___________$command _____________"
$command
done
for item in *
do 
if  [  -d $item  ]
then
echo "$item is a directory"
else 
echo "$item is a file"
fi
done
