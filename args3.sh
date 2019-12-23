#!/bin/bash

tot=0
for temp in $*
do
	echo $temp
   ((tot += temp))
done

echo $tot
