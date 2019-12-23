#!/bin/bash

# demo for the local variable

sum()
{
	local a=$1
	local b=$2
	local USER=abc
	echo $USER
	echo $((a + b))
}

sum 12 22
echo $a $b
echo $USER
