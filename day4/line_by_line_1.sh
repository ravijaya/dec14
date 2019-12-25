#!/bin/bash

function cat_while_read_LINE
{

cat $1 | while read LINE
do
    echo $LINE
done
}

cat_while_read_LINE /etc/passwd
