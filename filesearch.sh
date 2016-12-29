#!/bin/bash
read -p "Enter directory path (blank for current): " dirpath;
read -p "Enter filename (blank for *): " filename;
read -p "Enter the term or regex: " pattern;
filename="${filename:-"*"}";
if [ -n "$filename" ] && [ -n "$pattern" ];
then
    echo "COMMAND: grep -inr" "$pattern" "$dirpath""$filename" "| cut -f1,2 -d:";
    result=$(grep -inr $pattern $dirpath$filename | cut -f1,2 -d:);
    echo "$result";
  else
    echo "* * ALL FIELDS MUST BE VALID * *";
fi;
