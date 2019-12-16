#!/bin/bash

read -p "enter the file name : "  file_name
cat $file_name | cut -f1 -d: | sort -r | tr 'a-z' 'A-Z' | nl 
