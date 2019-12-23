pid_file=$TEMPDIR/$0.out

if [ -f $pid_file ]
then
	echo "$0: process already exists"
	exit 1
fi

echo $$ > $pid_file

sleep 10
rm $pid_file

