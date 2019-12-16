#!/bin/bash
file=/etc/resolv.conf
while  read -r line
do
    # echo line is stored in $line
    echo $line
done < "$file"
