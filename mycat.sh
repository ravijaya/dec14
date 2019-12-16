#!/bin/bash

if (($# == 0))
then
	{   # begin of the code block
		echo Usage:    
		echo "$0 file1 file2....."  
 	} 1>&2
	exit 1
fi

echo $@
cat $@
