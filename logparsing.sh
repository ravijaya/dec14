#!/bin/bash

# check for the root 
uid=`id -u`   

if ((uid != 0))
then
	echo "must be the root"
	exit 1
fi 

LOGFILE=/var/log/messages

if [ ! -f $LOGFILE ]
then
	echo "$LOGFILE not found, enter a valid name"
	exit 2
fi

KEYWORD=error  # search pattern
error_count=$(grep -ci $KEYWORD $LOGFILE)

if ((error_count > 0))
then
	echo "Found $error_count Errors."
else
	echo "No Error Found."
fi
