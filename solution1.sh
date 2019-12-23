#!/bin/bash

if (($# == 1))
then
	dir_path=$1
else
	dir_path='.' 
fi

ts=$(date +"%Y-%m-%d")  

for file_name in $(ls $dir_path/*.txt)
do
    target_file=$ts-$(basename $file_name)
   	mv -v $file_name $dir_path/$target_file
done
