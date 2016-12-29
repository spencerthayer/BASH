#!/bin/bash
read -p "Enter directory path (skip for current dir): " dirpath;
read -p "Enter file name(s): " filename;
read -p "Enter the term or regex: " pattern;
# if [ -n "$dirpath" ] else dirpath=".";
if [ -n "$filename" ] && [ -n "$pattern" ];
then
    echo "COMMAND: grep -inr" "$pattern" "$dirpath""$filename" "| cut -f1,2 -d:";
    result=$(grep -inr $pattern $dirpath$filename | cut -f1,2 -d:);
    echo "$result";
  else
    echo "* * ALL FIELDS MUST BE VALID * *";
fi;
