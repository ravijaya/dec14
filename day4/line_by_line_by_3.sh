#!/bin/bash

for_LINE_cat_FILE_cmdsub2 ()
{
# Method 3

for LINE in $(cat $1)
do
    echo "$LINE"
done
}

for_LINE_cat_FILE_cmdsub2 /etc/passwd