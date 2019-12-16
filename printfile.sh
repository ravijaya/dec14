#!/bin/bash

if (( $# != 2))
then
	echo Usage: >&2
	echo "$0 [printit|reverse|mirror] file_name" >&2
	exit 1
fi

operation=$1
filename=$2

if [ $operation = printit ]
then
	echo "############# printing $filename #########"
	cat $filename
elif [ $operation = mirror ]
then
	echo "############# mirroing $filename #########"
	rev $filename
elif [ $operation = reverse ]
then
	echo "############# reversing $filename #########"
	tac $filename
else
	echo "$operation: unknown operation" >&2
	exit 2
fi

