#!/bin/bash

while true
do
	rand_value=$(($RANDOM % 1000))
	if ((rand_value > 0)) && ((rand_value <= 1000))
	then
		break
	fi
done

echo $rand_value
