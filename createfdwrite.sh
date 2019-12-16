#!/bin/bash

# create a fd for the  output file

exec 3> output.txt
exec 33< /etc/passwd

ls -l /proc/$(echo $$)/fd/
cal >&3   # append into the output.txt 

read -u 33 line
echo
echo $line

# close the file 
exec 3<&-
exec 33<&-

