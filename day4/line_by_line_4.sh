#!/bin/bash
function while_read_LINE_FD_IN
{
  # Method 4
  # Associate standard input with file descriptor 3
  # and redirect standard input to $!

  exec 3<&0  # backup stdin
  exec 0< $1 # file to stdin 

  while read LINE
  do
    echo $LINE
  done

  # Restore standard input and close file
  # descriptor 3

  exec 0<&3
  exec 3>&-
}

while_read_LINE_FD_IN /etc/passwd
