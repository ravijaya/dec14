#!/bin/bash

usage()
{
  echo "Usage: $0 [-s|-r] [ -d DB_DUMP ] [ -f TARBALL ]"
  exit 2
}


while getopts 'srd:f:?h' c
do
  case $c in
    s) echo "save will be called" ;;
    r) echo "restore will be called" ;;
    d) echo "dumping $OPTARG" ;;
    f) echo "loading $OPTARG" ;;
    h|?) usage ;; 
   esac
done


echo $OPTIND
echo "$@"
shift $(($OPTIND-1))
echo "$@"  # this will given all the arguments after the options


