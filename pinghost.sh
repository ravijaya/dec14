#!/bin/bash

# demo for the output redirection

read -p "enter the host name :" hostname

ping $hostname -c2 > /dev/null

if (($?==0))
then
	echo "$hostname : up"
else
	echo "$hostname : down"
fi

