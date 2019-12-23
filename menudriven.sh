#!/bin/bash
# menu driven interface 

PS3='enter your choice :'
while true
do
  clear
  select item in user group hosts dns exit
  do
	case $item in
		user)	head -n2 /etc/passwd;;
		group) 	head -n2 /etc/passwd;;
		exit) 	exit;; 
		*)	echo "$item: not yet supported";;  # default case
	esac 
	break
  done
  echo
  read -p 'press enter to continue.....'
done
