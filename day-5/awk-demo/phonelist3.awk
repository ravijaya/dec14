# phonelist.awk -- print name and phone number.
# input file -- name, company, street, city, state and zip, phone
BEGIN { FS = "," }
# comma-delimited fields
$5 ~ /MA/ { print $1 ", " $6 }

