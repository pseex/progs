#!/bin/bash
# https://www.youtube.com/watch?v=8ga0xhZuG6k&list=PLT98CRl2KxKGj-VKtApD8-zCqSaN2mD4w&index=19

if [ $# -ne 2 ]
then
    echo "Usage: backup.sh <source_directory> <target_directory>"
    echo "Please try again."
    exit 1
fi

if ! command -v rsync > /dev/null 2>&1
then
    echo "This script requires rsync to be installed."
    echo "Please use your distribution's package manager to install it and try again."
    exit 2
fi

current_date=$(date +%Y-%m-%d)

rsync_options="-avb --backup-dir $2/current_date --delete --dry-run"

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log