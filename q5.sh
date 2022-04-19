#!/bin/bash
read -p "Input String:" str
k=${#str}
for ((i = $k - 1; i >-1; i--))
    do
      reversed=$reversed${str:$i:1}
 done
echo "Output String for operation a:"$reversed
subreverse=$(echo "$reversed" | tr "0-9a-zA-Z" "1-9a-zA-Z")
echo "Output String for operation b:"$subreverse
for ((i =(($k)/2)-1; i > -1; i--))
    do
      semireversed=$semireversed${str:$i:1}
 done
for ((i =(($k)/2); i<$k; i++))
    do
      semireversed=$semireversed${str:$i:1}
 done
echo "Output String for operation c:"$semireversed
