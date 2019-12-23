# demo for the shift commandi

tot=0
while (( $# > 0 ))
do

   echo $1
   (( tot += $1))
   shift
done

echo $tot


