#!/bin/bash

read -p 'enter the number : ' n

if ((n % 2 == 0)) 
then
	echo "$n : even"
else
	echo "$n: odd"
fi

