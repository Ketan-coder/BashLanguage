#!/bin/bash
#check if two arguments (x and y ) are provided
if [ $# -ne 2 ]
then
    echo "Error: two arguments required, x and y"
    exit 1
fi

#assign the command-line arguments to variables
x=$1
y=$2

echo "Before swapping"
echo "x = $x"
echo "y = $y"

#swap the values of x and y
temp=$x
x=$y
y=$temp

echo "After swapping"
echo "x = $x"
echo "y = $y"