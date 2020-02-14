#!/bin/bash
for file in $(ls *txt)
do
echo $file
echo "no of lines: "$(wc -l < $file )
echo "no of characters: "$(wc -c < $file)
#echo "owner name: "$(stat -x %u $file )
ls -lT $file
#nl -nrz -w3 $file //alternate for listing the content 
cat -n $file
done
