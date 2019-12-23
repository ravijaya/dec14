#!/bin/bash

function previous_date
{
	date --date "1 day ago"
}

function next_date
{
	date --date "1 day"
}

function today
{
	date
}

function nth_day
{
	date --date "$1 day"
}


flags=1

while getopts 'npd:' option
do
	case $option in
		p)   previous_date;;
		n)   next_date;;
		d)   nth_day $OPTARG;;
	esac
	flags=0
done

if [ $flags -eq 1 ]; then 
	today
fi



