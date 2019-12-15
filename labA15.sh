#!/bin/bash
a=2
b=4
while [ $a -lt $b ]
do
wget "https://www.cs.uic.edu/~jbell/CourseNotes/OperatingSystems/8_MainMemory.html"
a=$(($a+1))
done 
