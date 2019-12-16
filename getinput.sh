#!/bin/bash

# validate the input, file-test operator 

read -p 'enter the file name :' file_name
# echo ${#file_name}; exit 1

[ -z $file_name ]  && { echo "filename can't be empty"; exit 1;}

[ -f $file_name ] && stat $file_name || \
	{ echo "$file_name: file not found"; exit 2; }



