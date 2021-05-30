#! /bin/bash

: "
How to execute this file?

Open terminal in this file location and type the following command

bash source2.sh BMW Toyota Honda Mercedese
"

printf "\nMake a program that can take unlimited no of inputs from user and print them out\n"

# for this example we are taking 4 inputs
myArgumentArray=("$@")
echo ${myArgumentArray} # by default it prints out the 0th index value

# printing all array elements

# method 1
echo ${myArgumentArray[0]} ${myArgumentArray[1]} ${myArgumentArray[2]} ${myArgumentArray[3]}

# method 2: smart way
echo $@

# printing the length of an array
echo $#

: "
OUTPUT:

Make a program that can take unlimited no of inputs from user and print them out
BMW
BMW Toyota Honda Mercedese
BMW Toyota Honda Mercedese
4
"