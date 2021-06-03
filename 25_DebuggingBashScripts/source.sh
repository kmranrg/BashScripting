#! /bin/bash

# To run the script in debug mode, type this command: bash -x source.sh

echo -n "Enter name: "
read name

if [ $name = "anurag" ] 
then
    echo "Hello Anurag!"
else
    echo "Hello User!"
fi

echos "Hello World!" # here we will get error because 'ehcos' is not a 

: "
OUTPUT:

+ echo -n 'Enter name: '
Enter name: + read name
anurag
+ '[' anurag = anurag ']'
+ echo 'Hello Anurag!'
Hello Anurag!
+ echos 'Hello World!'
source.sh: line 15: echos: command not found
"