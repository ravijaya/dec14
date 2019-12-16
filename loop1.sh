#!/bin/bash

# demo for the while loop

i=1

while ((i <= 10))
do
    if ((i == 1)); then
		echo one
	elif ((i == 2)); then
		echo ii
    elif ((i == 5)); then
		((i++))
		continue
    elif  ((i == 7)); then
		break
	else
		echo $i
	fi
	((i++))
done


