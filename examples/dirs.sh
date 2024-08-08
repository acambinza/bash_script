#! /bin/bash

# -p if a folder just exists
mkdir -p Dir2

echo "Enter directory name to check"
read direct

# -f : to represent file
## if [ -f "$direct" ]


# to represent Dir
if [ -d "$direct" ]
then
    echo "$direct existis"
    for file in "$direct"/*
    do
        if [ -f "$file" ]
        then
            echo "file exists $file"
            while IFs= read -r line
            do
                echo "$line"
            done < $file
        fi
    done
else
    echo "is not a directory"
fi
