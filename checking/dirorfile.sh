#!/bin/bash
read -p "enter file or directory name:" f
if [ -d $f ]
then
echo "$f is a directory"
fi
if [ -f $f ]
then
echo "$f is a file"
fi

