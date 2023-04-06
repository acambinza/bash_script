#! /bin/bash

# send output from one script to another script
MESSAGE="Linux Ubuntu"
export MESSAGE 
./secondscript.sh


echo "enter 1st string"
read st1

echo "enter 2nd string"
read st2

if [ "$st1" == "$st2" ]
then
    echo "strings match"
else
    echo "strings don´t match"
fi


# concat
c=$st1$st2
echo $c


# lower
echo ${st1^}
# upper
echo ${st2^^}

# Captilize
echo ${st1^l}

# \< : smaller
# \> : bigger