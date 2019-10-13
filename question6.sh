#!/bin/bash
cat f1.txt
sed 's/am/ma/' f1.txt
cat f1.txt
sed 's/ma/am/' f1.txt
cat f1.txt

#use of egrep command
egrep -c am f1.txt
egrep -n am f1.txt
egrep -L am *.txt

#use of du command
du -h /home/piyush/da
du -a -h /home/piyush/da
du -c -h /home/piyush/da
du --time -h /home/piyush/da
