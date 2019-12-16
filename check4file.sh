#!/bin/bash

read -p 'enter the file name :' file_name

[ -f $file_name ] && stat $file_name || { echo "$file_name: file not found"; exit 2; }

# 1 + 2 + 4
# True || expr 


