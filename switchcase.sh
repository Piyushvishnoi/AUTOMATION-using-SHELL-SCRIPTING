#!/bin/bash
read a
case $a in
1) echo "first case is true";;
2) echo "second case is true";;
3) echo "third case is true";;
*) echo "default case is true"
esac

