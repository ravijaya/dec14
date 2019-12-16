*
**
***
****
*****
#!/bin/bash

target_dir=/tmp/area49
*
**
***
****
*****

if [ ! -d $target_dir ];
then
	mkdir $target_dir
fi

cd $target_dir

no_of_files=6

for ((i=1; i<=no_of_files; i++))
do
	touch temp$i.txt
done

