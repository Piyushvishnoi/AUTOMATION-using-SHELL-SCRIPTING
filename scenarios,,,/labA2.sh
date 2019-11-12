#!/bin/bash
read -p "archivefiles_directory: " archive_directory
find $(grealpath "$archive_directory") -name *.tar -mtime +2 -delete 
if !( crontab -l | grep -Fq "* 0 * * * /home/ubuntu/scenario2.sh" );
then
crontab -l | { cat;  echo "* 0 * * * /home/ubuntu/scenario2.sh";} | crontab  
fi
echo "script added to cron"
