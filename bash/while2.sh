#!/bin/bash


while [ -f testfile ]
do
    echo "The test file exists."
    sleep 0.5
done

echo "The file no longer exists. Exiting..."