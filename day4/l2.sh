# line by line 

line_no=1

while read line
do
	printf "%6s  %s" $line_no $line	
	((line_no++))
	echo 
done < $1

