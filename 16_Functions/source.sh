#! /bin/bash

printf "\n1) Make a function to print Hello Anurag\n"

function myFunc() {
    echo "Hello Anurag"
}

myFunc # function calling

printf "\n2) Make a function which takes one parameter and can print it\n"

function myPrint1() {
    echo $1
}

myPrint1 Hola

printf "\n3) Function with multiple parameters\n"

function myPrint2() {
    echo $1 $2 $3 $4
}

myPrint2 Hola, this is Anurag!

printf "\n4) Function that takes two parameters and print the addition result\n"

function addNumbers() {
    res=$(( $1+$2 ))
    echo "Addition Result: $res"
}

addNumbers 6 5

printf "\n5) [IMP] Local and Global Variables\n"

function check() {
    returningValue="I love Linux"
}

returningValue="I Love Mac"
echo "Before calling the function: $returningValue"

check # since we called this fucntion, now value of `returningValue` variable will be updated

echo "After calling the function: $returningValue"

: "
OUTPUT:

1) Make a function to print Hello Anurag
Hello Anurag

2) Make a function which takes one parameter and can print it
Hola

3) Function with multiple parameters
Hola, this is Anurag!

4) Function that takes two parameters and print the addition result
Addition Result: 11

5) [IMP] Local and Global Variables
Before calling the function: I Love Mac
After calling the function: I love Linux
"