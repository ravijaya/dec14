#!/bin/bash

declare -a distro=(fedora-core slax puppy debian ubuntu arch)

length=${#distro[@]}
echo "length of the array : $length"

# indexing 
distro[0]=centos  # update
distro[$length]=kali  # append to the array

echo ${distro[0]}  # read 
echo ${distro[2]}
echo ${distro[4]}
echo ${distro[6]}
echo 

length=${#distro[@]}
echo "length of the array : $length"
echo 

unset distro[2] # delete an item from an array

for item in "${distro[@]}"   # iterate the array
do
	echo $item
done

echo "${distro[@]}" | sort 
