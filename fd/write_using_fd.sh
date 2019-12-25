#!/bin/bash
# Let us assign the file descriptor to file for output
# fd # 3 is output file 
exec 3> /tmp/output.txt

# Executes echo commands and  # Send output to 
# the file descriptor (fd) # 3 i.e. write output to /tmp/output.txt
echo "This is a test" >&3


for ((i=1; i<=100000; i++))
do 
	# Write date command output to fd # 3
	date >&3
done
# Close fd # 3
exec 3<&-
