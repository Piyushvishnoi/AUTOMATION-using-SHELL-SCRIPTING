#!/bin/bash
echo "log files of directory:" >> /home/piyush/da/f2.txt
cat /var/log/syslog | grep home | grep piyush >> /home/piyush/da/f2.txt
echo "log files of all shell script:" >> /home/piyush/da/f2.txt
cat /var/log/syslog | grep shell >> /home/piyush/da/f2.txt
exit 0


