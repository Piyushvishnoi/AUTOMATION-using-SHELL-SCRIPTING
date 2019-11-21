#!/bin/bash
read -p "Enter listening port : " listening_port
netstat -au | grep -q "listening_port"
if [ $? != 0 ];
then
echo "ERROR, Web server is not running" >&2
/usr/sbin/apachectl restart
fi
backupfolder="/Users/piyushvishnoi/shellscripting/backuplabA5"
cp -r /var/log/apache2/ $backupfolder
netstat -au
netstat –lu
