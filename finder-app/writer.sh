#!/bin/bash
writefile=$1
writestr=$2
if [ $# -lt 2 ]; then
	echo "Parameters not specified"
	exit 1 
fi
mkdir -p $(dirname $writefile)
echo "$writestr" > $writefile
exit 0
