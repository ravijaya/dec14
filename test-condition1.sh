#!/bin/bash

# demo for the simple if 

read -p 'enter #5 :' n

if ((n == 5))
then
	echo "thanks for the entering $n :)"
fi

if ((n != 5))
then
    echo "asked to enter #5, please try again"
fi

