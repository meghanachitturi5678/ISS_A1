#!/bin/bash
read -p "Input file:" File
size=$(stat -c%s "$File")
echo "Size of $File=$size bytes"
echo -n "Number of lines in $File="
echo $(wc -l $File) | awk '{ print $1 }'
echo -n "Number of words in $File="
echo $(wc -w $File) | awk '{ print $1 }'
awk '{print "Line No:<"NR">""-Count of Words:""["NF"]"}' $File
awk '{for(i=1;i<NF+1;i++) {a[$i]++}} END {for(k in a) if(a[k]>1) {print "Word:<"k">""-Count of repetition:""["a[k]"]"}}' $File
