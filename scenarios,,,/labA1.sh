#!/bin/bash
read -e -p "log directory: " logdir
read -e -p "extension:" ext
read -e -p "backup directory: " backupdir
tar czf archievefile.tar.gz $(find $logdir -name "*.$ext")
mv archievefile.tar.gz $backupdir
rm $(find $logdir -name "*.$ext")
exit 0
 
