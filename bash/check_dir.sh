#!/bin/bash

directory=/etc

if [ -d $directory ]
then
	echo "The exit code for this script run is $?"
	echo "The directory $directory exitsts."
else
	echo "The exit code for this script run is $?"
	echo "The directory $directory doesn't exist."
fi

