#! /bin/bash

echo -n "Hi Kid, please tell me your age: "
read age

if [ $age -ge 13 ] && [ $age -le 19 ]
then
    echo "Welcome to Kids Circus. Enjoy amazing rides!"
elif [ $age -lt 13 ]
then
    echo "You are too small. See you soon."
else
    echo "Oh O! This circus is just for kids."
fi

: "
OUTPUT:

Hi Kid, please tell me your age: 15
Welcome to Kids Circus. Enjoy amazing rides!
"