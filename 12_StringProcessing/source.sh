#! /bin/bash

printf "\n1) Take two input strings from user and compare whether strings match or not\n"

echo -n "Enter 1st string: "
read st1

echo -n "Enter 2nd string: "
read st2

if [ "$st1" == "$st2" ]
then
    echo "strings match"
else
    echo "strings don't match"
fi

printf "\n\n2) Take two input strings from user and find out the smaller string\n"

# Rules for comparing strings: a < b < c < d .....

echo -n "Enter 1st string: "
read st1

echo -n "Enter 2nd string: "
read st2

if [ "$st1" \< "$st2" ]
then
    echo "$st1 is smaller than $st2"
elif [ "$st1" \> "$st2" ]
then
    echo "$st2 is smaller than $st1"
else
    echo "both strings are equal"
fi

printf "\n\n3) String Concatenation: Take two strings from user and concatenate them\n"

echo -n "Enter 1st string: "
read st1

echo -n "Enter 2nd string: "
read st2

combined=$st1$st2

echo "Concatenated string: $combined"

printf "\n\n4) String uppercase-lowercase\n"

echo -n "Enter 1st string: "
read st1

echo -n "Enter 2nd string: "
read st2

echo "Given First String: $st1"
echo "Only first letter capitalized in first string: ${st1^}"

echo "Given Second String: $st2"
echo "All letters capitalized in second string: ${st2^^}"
echo "All letters lower case in second string: ${st2,,}"

language="python perl java swift javascript csharp"
echo "Given Language String: ${language}"
echo "Only first letter capitalized only if it starts with p in language string: ${language^p}"
echo "All p's capitalized in language string: ${language^^p}"
echo "Only first letter capitalized only if it starts with p or j in language string: ${language^[p,j]}"
echo "All p's and j's capitalized in language string: ${language^^[p,j]}"

: "
OUTPUT:

1) Take two input strings from user and compare whether strings match or not
Enter 1st string: apple
Enter 2nd string: bat
strings don't match


2) Take two input strings from user and find out the smaller string
Enter 1st string: apple
Enter 2nd string: bat
apple is smaller than bat


3) String Concatenation: Take two strings from user and concatenate them
Enter 1st string: kumar
Enter 2nd string: anurag
Concatenated string: kumaranurag


4) String uppercase-lowercase
Enter 1st string: hello
Enter 2nd string: woRld
Given First String: hello
Only first letter capitalized in first string: Hello
Given Second String: woRld
All letters capitalized in second string: WORLD
All letters lower case in second string: world
Given Language String: python perl java swift javascript csharp
Only first letter capitalized only if it starts with p in language string: Python perl java swift javascript csharp
All p's capitalized in language string: Python Perl java swift javascriPt csharP
Only first letter capitalized only if it starts with p or j in language string: Python perl java swift javascript csharp
All p's and j's capitalized in language string: Python Perl Java swift JavascriPt csharP
"