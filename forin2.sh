#!/bin/bash

# for - in loop / iterator 

for i in {0..16}
do
	printf "|%6d|%6x|%6o|%-16.2f|\n"  $i $i $i $i 
done
