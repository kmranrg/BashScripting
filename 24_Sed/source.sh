#! /bin/bash

# sed stands for Stream Editor

printf "\n1) Make a 'demo.txt' file, add some data in it and replace a word and all its occurences using sed\n"

# creating 'demo.txt' and adding some data into it
touch demo.txt
echo "This is Linux" >> demo.txt
echo "This is Linux" >> demo.txt
echo "This is Mac" >> demo.txt
echo "This is Windows" >> demo.txt

echo -n "Enter a file name: "
read fileName

if [[ -f $fileName ]]
then
    sed 's/Linux/Ubuntu OS/g' $fileName # `s` represents substitution, `g` represents global
else
    echo "$fileName doesn't exist"
fi

printf "\n2) Printing the output of sed in new file\n"

sed 's/Linux/Ubuntu OS/g' demo.txt > newFile.txt

printf "\n3) sed output in the same file\n"

# creating  'new_demo.txt' and some content into it
touch new_demo.txt
echo "This is Linux" >> new_demo.txt
echo "This is Linux" >> new_demo.txt
echo "This is Mac" >> new_demo.txt
echo "This is Windows" >> new_demo.txt

sed -i 's/Linux/Ubuntu OS/g' new_demo.txt # now output will store in the same file i.e. new_demo.txt due to the `-i` flag

: "
OUTPUT:

1) Make a 'demo.txt' file, add some data in it and replace a word and all its occurences using sed
Enter a file name: demo.txt
This is Ubuntu OS
This is Ubuntu OS
This is Mac
This is Windows

2) Printing the output of sed in new file

3) sed output in the same file
"