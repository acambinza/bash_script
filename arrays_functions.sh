#! /bin/bash

car=("BMW" "Toyota" "Honda" "Suzuki")

# print all elements
echo ${car[@]}

echo "${car[@]}"

# the positions
echo "${!car[@]}"

# lenght
echo "${#car[@]}"

function funcPrint()
{
    echo $1
}

# call the function and pass the argument
funcPrint "hi"