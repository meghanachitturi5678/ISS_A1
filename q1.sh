#!/bin/bash
read -p "Input file:" File
awk 'NF' $File > OutputQ1.txt
awk '!seen[$0]++' OutputQ1.txt 
