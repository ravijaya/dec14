#!/bin/bash

function while_read_LINE_bottom
{
# Method 2
  while read LINE
  do
      echo $LINE
      :
  done < $1
}


while_read_LINE_bottom /etc/passwd
