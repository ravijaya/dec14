# line by line 

line_no=1

cat $1 | while read line
do
	printf "%6s  %s" $line_no $line	
	((line_no++))
	echo 
done

