#!/bin/bash
# coping the cron and anacron jobs in files
cp crontab cron.txt
cp anacrontab anacron.txt

#tar 
tar -cvf cronana.gz *.txt
mv cronana.gz cronana
