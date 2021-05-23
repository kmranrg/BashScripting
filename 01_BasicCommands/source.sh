#! /bin/bash

# How to execute this file: Open terminal and type the following commands
# (i) chmod +x source.sh
# (ii) ./source.sh

echo "1. Together hash symbol and excalamation symbol is known as Shebang(#!)"

printf "\n2. Print all the shells avaialable in the system:"
cat /etc/shells

printf "\n3. How to check the path of bash:\n"
which bash

printf "\n4. Creating a new shell script file:\n"
touch HelloWorld.sh

printf "\n5. List all files and folders present in the directory:\n"
ls

printf "\n6. Making the shell script executable:\n"
chmod +x HelloWorld.sh

printf "\n7. List all files and folders present in the directory:\n"
ls -al