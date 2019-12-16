#!/bin/bash

file_name=hosts.csv
# demo for the input redirection

i=1

while IFS=, read host host_desc
do	
	if ((i==1)); then
		((i++))
		ls -l /proc/$(echo $$)/fd
		sleep 10
	fi

	echo $host;  echo $host_desc; echo

done  < $file_name
