#! /bin/bash

echo "1) Print first 10 natural numbers using while loop"

number=1
while [ $number -le 10 ] # while loop runs till condition remains true
do
    printf "\t$number\n"
    number=$(( number+1 ))
done

printf "\n2) Print first 10 natural numbers using until loop\n"

number=1
until [ $number -gt 10 ] # until loop runs till condition remains false
do
    printf "\t$number\n"
    number=$(( number+1 ))
done

printf "\n3) Print first 10 natural numbers using for loop\n"

# Method 1
printf "\tMethod-1\n"
for i in 1 2 3 4 5 6 7 8 9 10
do
    printf "\t$i\n"
done

# Method 2 - Smart Way
printf "\n\tMethod-2\n"
for i in {1..10} # by default bash takes the increment value to be 1
do
    printf "\t$i\n"
done

printf "\n4) For loop in Bash with starting point, ending point and increment value\n"

for i in {2..20..3} # here the increment value is 3
do
    printf "\t$i\n"
done

printf "\n5) Conventional for loop method\n"

for (( i=0; i<5; i++ ))
do
    echo $i
done

printf "\n6) break\n"

for (( i=1; i<=10; i++ ))
do
    if [ $i -eq 5 ]
    then
        break # `break` is used to end the loop
    fi
    echo $i
done

printf "\n7) continue\n"

for (( i=1; i<=10; i++ ))
do
    if [ $i -eq 5 ]
    then
        continue # `continue` is used to skip the loop condition
    fi
    echo $i
done

: "
OUTPUT:

1) Print first 10 natural numbers using while loop
        1
        2
        3
        4
        5
        6
        7
        8
        9
        10

2) Print first 10 natural numbers using until loop
        1
        2
        3
        4
        5
        6
        7
        8
        9
        10

3) Print first 10 natural numbers using for loop
        Method-1
        1
        2
        3
        4
        5
        6
        7
        8
        9
        10

        Method-2
        1
        2
        3
        4
        5
        6
        7
        8
        9
        10

4) For loop in Bash with starting point, ending point and increment value
        2
        5
        8
        11
        14
        17
        20

5) Conventional for loop method
0
1
2
3
4

6) break
1
2
3
4

7) continue
1
2
3
4
6
7
8
9
10
"