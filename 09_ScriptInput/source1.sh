#! /bin/bash

: "
How to execute this file?

Open terminal in this file location and type the following command

bash source1.sh BMW Toyota Honda
"

printf "\n1) Take three values from user and print them out\n"
echo $1 $2 $3

printf "\n2) Take three values from user and print them out along with the file name\n"
echo $0 $1 $2 $3

: "
OUTPUT:

1) Take three values from user and print them out
BMW Toyota Honda

2) Take three values from user and print them out along with the file name
source.sh BMW Toyota Honda
"