#!/bin/bash
text=$1
folderName=$2
fileCount=$3

if [ -d "$folderName" ]; then
    echo "Folder Already Exists !!"
    exit 74
else
    mkdir -p "$folderName"
    if [ $? -eq 0 ]; then
        for i in $(seq 1 $fileCount); do
            file_name="${folderName}/file_$i.txt"
            touch "$file_name"
            if [ $? -eq 0 ]; then
                echo "$text" >> $file_name
            else
                echo "Error creating file: $file_name"
             fi
        done
    else
        echo "Error Creating a folder"
    fi
fi