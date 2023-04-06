#! /bin/bash

# $1: to receive external args
# to $1 is this script
echo $0 $1 $2 $3 

# to get many args
args=("$@")

echo ${args[0]} ${args[1]}