#!/bin/bash

# directory=/etc
directory=/notexist

if [ -d $directory ]
then
	echo "The exit code for line 7 is $?"
	echo "The directory $directory exitsts."
    exit 0
else
	echo "The exit code for line 10 is $?"
	echo "The directory $directory doesn't exist."
    exit 1
fi

echo "The exit code for this script is $?"
echo "This statement not printing!!!!"