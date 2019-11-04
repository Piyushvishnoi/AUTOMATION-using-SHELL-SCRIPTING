#!/bin/bash
# use of select loop as in switch and case in c and c++
select name in piyush omji ameesha vidushi
do 
case $name in
piyush)
echo "$name selected";;
omji)
echo "$name is my bestie";;
ameesha)
echo "$name is my bestie";;
vidushi)
echo "$name is my favourite";;
*)
echo "default case";;
esac
done

