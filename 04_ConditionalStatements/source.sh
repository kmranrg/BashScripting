#! /bin/bash

printf "\n1) Simple if-fi\n"

count=10 # NOTE: there should not be spaces in between
if [ $count -eq 10 ] # -eq stands for equals to
then
    echo "the condition is true"
fi #end of above if

printf "\n2) if-else-fi \n"

count=9
if [ $count -ne 10 ] # -ne stands for not equals to
then
    echo "count is not equal to 10"
else
    echo "count is equal to 10"
fi

printf "\n3) if-elif-else-fi\n"

count=100
if [ $count -eq 99 ] # after if, it is compulsary to put space
then
    echo "count is not equal to 99"
elif [ $count -eq 100 ]
then
    echo "count is equal to 100"
else
    echo "count is neither 99 nor 100"
fi

printf "\n4) Nested if-else\n"

count=100
if [ $count -eq 99 ]
then
    echo "count is 99"
else
    if [ $count -eq 101 ]
    then
        echo "count is 101"
    else
        echo "count is neither 99 nor 101"
    fi
fi

printf "\n5) Greater than comparison\n"

count=5
if [ $count -gt 3 ]
then
    echo "count is greater than 3"
fi

count=5
if (( $count > 3 ))
then
    echo "count is greater than 3"
fi

printf "\n5) Less than comparison\n"

count=5
if [ $count -lt 6 ]
then
    echo "count is less than 6"
fi

count=5
if (( $count < 6 ))
then
    echo "count is less than 6"
fi

printf "\n6) Greater than equals to comparison\n"

count=6
if [ $count -ge 6 ]
then
    echo "count is greater than equals to 6"
fi

count=6
if (( $count >= 6 ))
then
    echo "count is greater than equals to 6"
fi

printf "\n7) Lesser than equals to comparison\n"

count=6
if [ $count -le 6 ]
then
    echo "count is lesser than equals to 6"
fi

count=6
if (( $count <= 6 ))
then
    echo "count is lesser than equals to 6"
fi

printf "\n8) AND(&&) Operator\n"

# Method 1
age=5
if [ $age -gt 4 ] && [ $age -lt 6 ]
then
    echo "age is correct"
else
    echo "age is not correct"
fi

# Method 2
age=5
if [[ $age -gt 4 && $age -lt 6 ]]
then
    echo "age is correct"
else
    echo "age is not correct"
fi

# Method 3
age=5
if [ $age -gt 4 -a $age -lt 6 ] # -a stands for AND
then
    echo "age is correct"
else
    echo "age is not correct"
fi

printf "\n9) OR(||) Operator\n"

# Method 1
age=5
if [ $age -gt 4 ] || [ $age -lt 6 ]
then
    echo "age is correct"
else
    echo "age is not correct"
fi

# Method 2
age=5
if [[ $age -gt 4 || $age -lt 6 ]]
then
    echo "age is correct"
else
    echo "age is not correct"
fi

# Method 3
age=5
if [ $age -gt 4 -o $age -lt 6 ] # -o stands for OR
then
    echo "age is correct"
else
    echo "age is not correct"
fi

: "
OUTPUT:

1) Simple if-fi
the condition is true

2) if-else-fi 
count is not equal to 10

3) if-elif-else-fi
count is equal to 100

4) Nested if-else
count is neither 99 nor 101

5) Greater than comparison
count is greater than 3
count is greater than 3

5) Less than comparison
count is less than 6
count is less than 6

6) Greater than equals to comparison
count is greater than equals to 6
count is greater than equals to 6

7) Lesser than equals to comparison
count is lesser than equals to 6
count is lesser than equals to 6

8) AND(&&) Operator
age is correct
age is correct
age is correct

9) OR(||) Operator
age is correct
age is correct
age is correct
"