#!/bin/bash

# demo for the FOR loop


for ((i=1; i<=5; i++))  # row
do
	for ((j=1; j<=i; j++))  # columns
	do
		echo -n '*'	
	done
	echo
done
