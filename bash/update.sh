#!/bin/bash

release_file=/etc/os-release 
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

check_exit_status() {
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $errorlog file."
    fi
}

if grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file
then
    sudo apt update 1>>$logfile 2>>$errorlog
    check_exit_status
fi