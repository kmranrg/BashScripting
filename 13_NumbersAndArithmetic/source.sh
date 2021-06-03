#! /bin/bash

printf "\n1) Incorrect way of printing sum of two numbers\n"

echo 11+45

printf "\n2) Arithmetic Operations\n"

n1=11
n2=45
echo "Addition: $(( n1 + n2 ))"
echo "Subtraction: $(( n1 - n2 ))"
echo "Multiplication: $(( n1 * n2 ))"
echo "Division: $(( n1 / n2 ))"
echo "Modulus: $(( n1 % n2 ))"

printf "\n3) Arithmetic Operations using expr\n"

n1=11
n2=45
echo "Addition: $(expr $n1 + $n2 )"
echo "Subtraction: $(expr $n1 - $n2 )"
echo "Multiplication: $(expr $n1 \* $n2 )" # we need to put backward slash before `*` otherwise it will give an error
echo "Division: $(expr $n1 / $n2 )"
echo "Modulus: $(expr $n1 % $n2 )"

printf "\n4) How to do floating point division in Bash\n"

n1=100
n2=3
bc <<< "scale=3; $n1/$n2" # `bc` stands for basic calculator and `scale` value is total no of decimal places we want

printf "\n5) Hex value to Decimal Conversion\n"

echo -n "Enter Hex number of your choice: "
read Hex

echo -n "The decimal value of $Hex is: "
echo "obase=10; ibase=16; $Hex" | bc # `ibase` is input-base value and `obase` is output-base value

printf "\n6) Decimal to Hex value Conversion\n"

echo -n "Enter a number of your choice: "
read Dec

echo -n "The Hex value of $Dec is: "
echo "obase=16; ibase=10; $Dec" | bc

printf "\n7) Decimal to Binary Conversion\n"

echo -n "Enter a number of your choice: "
read Dec

echo -n "The binary value of $Dec is: "
echo "obase=2; ibase=10; $Dec" | bc

: "
OUTPUT:

1) Incorrect way of printing sum of two numbers
11+45

2) Arithmetic Operations
Addition: 56
Subtraction: -34
Multiplication: 495
Division: 0
Modulus: 11

3) Arithmetic Operations using expr
Addition: 56
Subtraction: -34
Multiplication: 495
Division: 0
Modulus: 11

4) How to do floating point division in Bash
33.333

5) Hex value to Decimal Conversion
Enter Hex number of your choice: FFFF
The decimal value of FFFF is: 65535

6) Decimal to Hex value Conversion
Enter a number of your choice: 65535
The Hex value of 65535 is: FFFF

7) Decimal to Binary Conversion
Enter a number of your choice: 5
The binary value of 5 is: 101
"