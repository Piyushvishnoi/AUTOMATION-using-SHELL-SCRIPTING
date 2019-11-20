#!/bin/bash
if [ $# -eq 0 ]
then 
echo "No inputs send via command line!! Exiting" >&2; exit 1;
fi
path=$1
echo $path
path1="/Users/piyushvishnoi/dir20nov/"
if [ -d $path ]
then
rm -r $path
date >> $path1/del.log
whoami >> $path1/del.log
echo "$path" >> $path1/del.log
fi
if [ -f $path ]
then
rm $path
date >> $path1/del.log
whoami >> $path1/del.log
echo "$path" >> $path1/del.log
fi
