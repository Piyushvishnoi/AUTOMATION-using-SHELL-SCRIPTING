#!/bin/bash
#write schedule to remove all zip files of particularly last two days

find /home/reetdubey -mtime +2  -type *.zip -delete
