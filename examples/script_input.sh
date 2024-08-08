#! /bin/bash

# $1: to receive external args
# to $1 is this script
echo $0 $1 $2 $3 

# to get many args
args=("$@")

echo ${args[0]} ${args[1]}

# print all
echo $@

# cont the array args
echo $#


# to read a terminal
while read line
do 
    echo "$line"
done < "${1:-/dev/stdin}"