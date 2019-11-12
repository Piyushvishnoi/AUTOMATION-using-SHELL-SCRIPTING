#!/bin/bash
read -p "enter file to be decrypted" f
read -p "Do you want to decrypt now? " res
case $res in
y|Y|yes|YES) gpg -d $f.gpg ;;
*) echo "Folder is still encrypted!!!" ;;
esac
