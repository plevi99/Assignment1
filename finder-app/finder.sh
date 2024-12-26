#!/bin/bash
filesdir=$1
searchstr=$2
if [ $# -lt 2 ]; then
	echo "Parameters not specified"
	exit 1
fi
if [ ! -d "$filesdir" ]; then
	echo "$filesdir is not a valid directory"
	exit  1
fi
files=$( grep -l "$searchstr" "$filesdir"/* | wc -l )
lines=$( grep -o "$searchstr" "$filesdir"/* | wc -l )
echo "The number of files are $files and the number of matching lines are $lines"
exit 0
