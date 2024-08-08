#! /bin/bash

number=1
: '
while [ $number -lt 10 ]
do 
    echo "Number: $number"
    # increment
    number=$(( number+1 ))
done

while [ $number -le 20 ]
do 
    echo "Number_2: $number"
    # increment
    number=$(( number+1 ))
done
'


until [ $number -ge 20 ]
do 
    echo "Number_3: $number"
    # increment
    number=$(( number+1 ))
done


for i in 1 2 3 4 5
do  
    echo $i
done


for i in {0..10}
do  
    echo $i
done