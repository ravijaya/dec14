#!/bin.bash

exec 3> data22.txt  #  create fs for the write 

for ((i=1; i<=100000; i++)) 
do
	date 1>&3   # output gets redirector to the file desc 
done


exec 3<&-  # closing the fd

