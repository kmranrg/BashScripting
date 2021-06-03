#! /bin/bash

printf "\n1) Create a new folder\n"

mkdir -p "MyFolder"

printf "\n2) Take a directory name from the user and check whether it exists or not\n"

echo -n "Enter directory name: "
read directoryName

if [ -d "$directoryName" ] # `-d` is used for checking directories
then
    echo "$directoryName exists"
else
    echo "$directoryName doesn't exist"
fi

printf "\n3) Take a file name from user and create a file by that name in MyFolder\n"

echo -n "Enter file name: "
read fileName
myPath=./MyFolder
touch ${myPath}/$fileName

printf "\n4) Take a file name from user and check whether it exists or not in MyFolder\n"

echo -n "Enter file name: "
read fileName
myPath=./MyFolder

if [[ -f $myPath/$fileName ]] # `-f` is used for checking files
then
    echo "$fileName exists in MyFolder directory"
else
    echo "$fileName doesn't exist in MyFolder directory"
fi

printf "\n5) Take and a file name(MyFolder) and some text from the user and append the text in the file if it exists\n"

echo -n "Enter file name in which you want to append: "
read fileName
path=./MyFolder

if [[ -f "$path/$fileName" ]]
then
    echo -n "Enter the first line that you want to apppend: "
    read fileText
    echo "$fileText" >> $path/$fileName # `>>` two angular brackets are used to append and `>` 1 angular bracket is used to overwrite
    
    echo -n "Enter the second line that you want to apppend: "
    read fileText
    echo "$fileText" >> $path/$fileName
else
    echo "$fileName doesn't exists in MyFolder"
fi

printf "\n6) Reading a file line by line\n"

echo -n "Enter file name from which you want to read: "
read fileName

if [[ -f $path/$fileName ]]
then
    while IFS="" read -r line
    do
        echo "$line"
    done < $path/$fileName
else
    echo "$fileName doesn't exist in MyFolder"
fi

printf "\n7) Take a fileName from user and create it and then take another file name from user and delete that file\n"

echo -n "Enter a file name to create: "
read fileName

touch $fileName

echo -n "Enter a file name which you want to delete: "
read fileName

if [[ -f "$fileName" ]]
then
    rm $fileName
    echo "file has been deleted successfully"
else
    echo "$fileName does not exist"
fi

: "
OUTPUT:

1) Create a new folder

2) Take a directory name from the user and check whether it exists or not
Enter directory name: MyFolder
MyFolder exists

3) Take a file name from user and create a file by that name in MyFolder
Enter file name: newFile.txt

4) Take a file name from user and check whether it exists or not in MyFolder
Enter file name: newFile.txt
newFile.txt exists in MyFolder directory

5) Take and a file name(MyFolder) and some text from the user and append the text in the file if it exists
Enter file name in which you want to append: newFile.txt
Enter the first line that you want to apppend: Hi, I am Kumar Anurag.
Enter the second line that you want to apppend: My Instagram ID: kmranrg

6) Reading a file line by line
Enter file name from which you want to read: newFile.txt
Hi, I am Kumar Anurag.
My Instagram ID: kmranrg

7) Take a fileName from user and create it and then take another file name from user and delete that file
Enter a file name to create: abc.txt
Enter a file name which you want to delete: abc.txt
file has been deleted successfully
"