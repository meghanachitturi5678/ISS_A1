#!/bin/bash
read -p "Input file:" File
while read line
do
if [[ ! -z $line ]]
then
   s1=($(echo "${line[*]}" | cut --complement -d "~" -f1 ))
   s2=($(echo "${line[*]}" | cut -d "~" -f1 ))
   echo "["${s1[*]}"]" "once said,"'"'"["${s2[*]}"]"'"' >>speech.txt
fi
done <$File
