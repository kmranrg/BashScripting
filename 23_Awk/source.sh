#! /bin/bash

printf "\n1) Make a 'demo.txt' file add some content and print the whole file using awk\n"

# creating demo.txt and adding some content into it
touch demo.txt
for i in {1..10}
do
    echo "This is Linux" >> demo.txt
    echo "This is Linux" >> demo.txt
    echo "This is Mac" >> demo.txt
    echo "This is Windows" >> demo.txt
done

echo -n "Enter file name to print from awk: "
read fileName

if [[ -f $fileName ]]
then
    awk '{print}' $fileName
else
    echo "$fileName doesn't exist"
fi

printf "\n2) Take the file name from the user and print all the lines that contain Windows\n"

echo -n "Enter file name: "
read fileName

if [[ -f $fileName ]]
then
    awk '/Windows/ {print}' $fileName
    
    echo "---------------------------------"
    # for printing just This and Windows (since Windows is the 3rd word in the line so we will use 3 as index and we will use 1 as index for This as it is the 1st word)
    awk '/Windows/ {print $1,$3}' $fileName # if you just want to print Windows then only type: awk '/Windows/ {print $3}' $fileName
else
    echo "$fileName doesn't exist"
fi

: "
OUTPUT:

1) Make a 'demo.txt' file add some content and print the whole file using awk
Enter file name to print from awk: demo.txt
This is Linux
This is Linux
This is Mac
This is Windows
This is Linux
This is Linux
This is Mac
This is Windows
This is Linux
This is Linux
This is Mac
This is Windows
This is Linux
This is Linux
This is Mac
This is Windows
This is Linux
This is Linux
This is Mac
This is Windows
This is Linux
This is Linux
This is Mac
This is Windows
This is Linux
This is Linux
This is Mac
This is Windows
This is Linux
This is Linux
This is Mac
This is Windows
This is Linux
This is Linux
This is Mac
This is Windows
This is Linux
This is Linux
This is Mac
This is Windows

2) Take the file name from the user and print all the lines that contain Windows
Enter file name: demo.txt
This is Windows
This is Windows
This is Windows
This is Windows
This is Windows
This is Windows
This is Windows
This is Windows
This is Windows
This is Windows
---------------------------------
This Windows
This Windows
This Windows
This Windows
This Windows
This Windows
This Windows
This Windows
This Windows
This Windows
"