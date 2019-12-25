awk '{print $2, $1, $3}' name

awk -F"\t" '{print $2, $1}' name

awk -F, -f blocklist.awk names2


