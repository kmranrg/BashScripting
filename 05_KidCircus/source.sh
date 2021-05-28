#! /bin/bash

echo -n "Hi Kid, please tell me your age: "
read age

if [ $age -ge 13 ] && [ $age -le 19 ]
then
    echo "Welcome to Kids Circus. Enjoy amazing rides!"
elif [ $age -lt 13 ]
then
    diff=$(( 13-age ))
    echo "You are too small. Come again after $diff year(s)."
else
    echo "Oh O! This circus is just for kids."
fi

: "
OUTPUT:

Hi Kid, please tell me your age: 10
You are too small. Come again after 3 year(s).
"