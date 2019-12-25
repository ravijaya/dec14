#!/bin/bash

# number finding game  called guessme

while true
do
	rand_value=$(($RANDOM % 1000))
	if ((rand_value > 0)) && ((rand_value <= 1000))
	then
		break
	fi
done

#echo $rand_value
chance=1
max_chance=10

while ((chance <= max_chance))
do
	echo -ne "Chance: $chance\nenter the value :"
	read user_value

	echo $user_value | grep -Ew '[0-9]+'  > /dev/null

	if (($? != 0))
	then
		echo "invalid input, retrying....."
		echo
		continue
	fi

	if ((user_value == rand_value))
	then
		echo "$rand_value: you won :) !!!!!!!"
		break
	elif ((user_value < rand_value))
	then 
		echo "Hint: $user_value: lesser"
	else
		echo "Hint: $user_value: greater"
	fi
	((chance++))
	echo
done

if ((chance > 10))
then
	echo "you lost :(......"
fi

