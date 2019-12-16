#!/bin/bash
read -p 'enter the 3 numbers :' a  b c

echo "given : $a $b $c"

if ((a > b)) && ((a > c))
then 
	echo "$a : biggest"
elif ((b > a)) && ((b > c))
then 
	echo "$b : biggest"
else
	echo "$c : biggest"
fi

