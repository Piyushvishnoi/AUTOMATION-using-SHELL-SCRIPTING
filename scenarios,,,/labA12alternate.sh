#!/bin/bash
read -p "ENCRYPTING FILE :" f
gpg -c $f
echo "deleting original file"
rm $f

