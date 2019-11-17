#!/bin/bash
echo "showing uh what is in the recycle bin"
ls /Users/piyushvishnoi/shellscripting/recyclebin
read -p "which file to be recycled:" file
#read -p "in which directory u want to restore the files :" $dir
mv /Users/piyushvishnoi/shellscripting/recyclebin/$file  /Users/piyushvishnoi/shellscripting/dirnew
echo "after restoration of file"
echo "after recycling recycle bin will contain:"
ls /Users/piyushvishnoi/shellscripting/recyclebin
echo "after recycling dirnew will contain:"
ls  /Users/piyushvishnoi/shellscripting/dirnew



