#!/bin/bash

. $HOME/bin/scripts.sh

center $1 80 -
cat $1
echo $(repeat - 80)
