#!/bin/bash
echo -n  "Print Inputs in original order:"
IFS="," 
read -a A
k=${#A[*]}
flag=1
for (( i = 0; i < $k; i++ ))
do
    flag=0
    for ((j = 0; j < ($k-($i)-1); j++ ))
    do
        if [[ ${A[$j]} -gt ${A[$j+1]} ]]
        then
            temp=${A[$j]};
            A[$j]=${A[$j+1]};
            A[$j+1]=$temp;
            flag=1;
        fi
    done
    if [[ $flag -eq 0 ]]; then
          break;
   fi
done
echo -n Ascending order of given inputs:${A[0]}
i=1
until ((i>k-1))
do
echo -n ",${A[i]}"
((i++))
done
echo
