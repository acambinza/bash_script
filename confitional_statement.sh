#! /bin/bash

# att without space
count=11

# -eq : equal
# -ne : not equal
# -gt : grad then
# -lt : less then


## att with space
if [ $count -ne 10 ]
then 
    echo "the conditional is true"
else
    echo "the conditional is false"
fi


# other way

if (( $count == 10 )) 
then 
    echo "the conditional is true"
elif (( $count <= 9 ))
then
    echo "the conditional <= 9"
else
    echo "the conditional is false"
fi


age=30

# > 18 and < 40
if [ "$age" -gt 18 ] && [ "$age" -lt 40 ]
then
    echo "Age is correct"
else
    echo "Age is not correct"
fi