#!/bin/bash

# -s ~ -p '*.pdf' -t /tmp/catch22

while getopts 's:p:t:' arg
do
	case $arg in
		s)	SEARCHPATH=$OPTARG ;;
		p)  PATTERN=$OPTARG ;;
		t)  targetdir=$OPTARG
	esac 
done

find $SEARCHPATH -name $PATTERN -exec cp {} $targetdir \; 

archive_name=sample.tar.gz
tar -czf $archive_name  $targetdir
echo "$archive_name : created....."

#export RSYNC_PASSWORD=training
rsync  $archive_name training@localhost:~

