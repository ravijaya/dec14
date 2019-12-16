#!/bin/bash

file_name=hosts.csv
# demo for the input redirection


while IFS=, read host host_desc
do	
	echo -n "pinging : $host... :"
	ping $host -c 1    > /dev/null   2> /dev/null

	if (($?==0))
	then
		echo "up"
	else
		echo "down"
	fi
done  < $file_name
