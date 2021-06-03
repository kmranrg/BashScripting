#! /bin/bash

printf "\n1) Create a file 'demo.txt' and store some content in it\n"

touch demo.txt
for i in {1..10}
do
    echo "This is Linux" >> demo.txt
    echo "This is Linux" >> demo.txt
    echo "This is Mac" >> demo.txt
    echo "This is Windows" >> demo.txt
done

printf "\n2) Take a file name from user and if it exists take any search string from user and search it in that file and search should be done on the basis of case-insensitive and print the search results with line numbers\n"

echo -n "Enter filename to search the text from: "
read fileName

if [[ -f $fileName ]]
then
    echo -n "Enter the text to search: "
    read searchString
    grep -i -n $searchString $fileName 
    # In the above line:-
    # 1) `grep` means Global Regular Expressions, 
    # 2) `-i` is for making search case-insensitive, if we remove `-t` then it will be case-sensitive
    # 3) `-n` is for printing the line numbers along with search results
else
    echo "$fileName doesn't exist"
fi

printf "\n3) Take a file name from the user and then take search string and print the total no of times the search string present in the file\n"

echo -n "Enter filename to search the text from: "
read fileName

if [[ -f $fileName ]]
then
    echo -n "Enter the text to search: "
    read searchString
    echo -n "Total no of times $searchString present in $fileName = "
    grep -i -n -c $searchString $fileName # `-c` is used to count the total no of times search string is present in the file
else
    echo "$fileName doesn't exist"
fi

printf "\n4) Print all the lines from 'demo.txt' which do not contain word 'windows'\n"

fileName="demo.txt"

if [[ -f $fileName ]]
then
    searchString="windows"
    grep -i -v $searchString $fileName # `-v` flag is used to print all the lines which do not contain the searchPattern
    echo -n "Total no of lines which do not include $searchString in $fileName = "
    grep -i -n -c -v $searchString $fileName
else
    echo "$fileName doesn't exist"
fi

# For learning more about grep just open the terminal and see the manual page of grep by just typing this command: man grep

: "
OUTPUT:

1) Create a file 'demo.txt' and store some content in it

2) Take a file name from user and if it exists take any search string from user and search it in that file and search should be done on the basis of case-insensitive and print the search results with line numbers
Enter filename to search the text from: demo.txt
Enter the text to search: liNux
1:This is Linux
2:This is Linux
5:This is Linux
6:This is Linux
9:This is Linux
10:This is Linux
13:This is Linux
14:This is Linux
17:This is Linux
18:This is Linux
21:This is Linux
22:This is Linux
25:This is Linux
26:This is Linux
29:This is Linux
30:This is Linux
33:This is Linux
34:This is Linux
37:This is Linux
38:This is Linux

3) Take a file name from the user and then take search string and print the total no of times the search string present in the file
Enter filename to search the text from: demo.txt
Enter the text to search: windows
Total no of times windows present in demo.txt = 10

4) Print all the lines from 'demo.txt' which do not contain word 'windows'
This is Linux
This is Linux
This is Mac
This is Linux
This is Linux
This is Mac
This is Linux
This is Linux
This is Mac
This is Linux
This is Linux
This is Mac
This is Linux
This is Linux
This is Mac
This is Linux
This is Linux
This is Mac
This is Linux
This is Linux
This is Mac
This is Linux
This is Linux
This is Mac
This is Linux
This is Linux
This is Mac
This is Linux
This is Linux
This is Mac
Total no of lines which do not include windows in demo.txt = 30
"