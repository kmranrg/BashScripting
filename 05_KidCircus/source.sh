#! /bin/bash

age=15
if [ $age -ge 13 ] && [ $age -le 19 ]
then
    echo "Welcome to Kids Circus. Enjoy amazing rides!"
elif [ $age -lt 13 ]
then
    echo "You are too small. See you soon."
else
    echo "Oh O! This circus is just for kids."
fi

# OUTPUT:
# Welcome to Kids Circus. Enjoy amazing rides!