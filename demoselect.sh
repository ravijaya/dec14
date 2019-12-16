#!/bin/bash
PS3='enter the choice : '

while true
do

  clear	

  select item in  mem-info cpu-info user-info running-time disk-info exit
  # menu driven application
  do
	echo "############# you picked $item ###############"
	case $item in
		mem-info)  free -m;;
		cpu-info)  lscpu;;
		exit)   exit 0;;
	esac

	read -p 'press any key to continue'
	break
  done 

done
