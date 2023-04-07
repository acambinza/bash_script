#! /bin/bash

## to debuggin
# set -x
# set +x

# grep; awk ; sed

echo "Enter the file name to seach text from"
read fileName

if [[ -f $fileName ]]
then
    echo "Enter ther text to seach"
    read grepvar
    # -i : 
    # -n : to show number of line
    # -c : count line results
    # -v : other lines without a keyword
    ##grep -i -n $grepvar $fileName

    # $1 : get the first column
    awk '/Linux/ {print $1, $3}' $fileName

else
    echo "$fileName doen´t exist"
fi