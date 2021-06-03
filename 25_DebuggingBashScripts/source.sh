#! /bin/bash

# To run the script in debug mode, type this command: bash -x source.sh

echo -n "Enter name: "
read name

if [ $name = "anurag"] # here we will get error because we didn't put space before closing square bracket
then
    echo "Hello Anurag!"
else
    echo "Hello User!"
fi

: "
OUTPUT:

+ echo -n 'Enter name: '
Enter name: + read name
anurag
+ '[' anurag = 'anurag]'
source.sh: line 8: [: missing `]'
+ echo 'Hello User!'
Hello User!
"