#!/bin/bash
#
#
#
##############################################
# DEFINE FILES AND VARIABLES HERE
##############################################

# Define the source and destination files/directories

SOURCE_FL="/scripts/"
DESTIN_FL="booboo:/scripts"

##############################################
# BEGINNING OF MAIN
##############################################

# Start the rsync copy

rsync -avz "$SOURCE_FL" "$DESTIN_FL"

# End of generic_rsync.bash
