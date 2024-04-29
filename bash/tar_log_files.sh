#!/bin/bash


for file in logfiles/*.log
do
    tar -zcvf $file.tar.gz $file
done