#! /bin/bash

printf "\n1) Print the STDOUT in 'file1.txt' and STDERR in 'file2.txt'\n"

echo "Hi Anurag" 1> file1.txt 2> file2.txt # since there is no standard error in this command so "file2.txt" will be empty

printf "\n2) Print the STDOUT in 'file3.txt' and STDERR in 'file4.txt'\n"

echosfsl "Hi Anurag" 1> file3.txt 2> file4.txt # since there is error in the command so this time "file4.txt" will not be empty and also there is no output so "file3.txt" will be empty

printf "\n3) Print the STDOUT or STDERR in a single file 'file5.txt'\n"

# method 1
echo "Hello Anurag" >file5.txt 2>&1
# method 2
echo "Hello Anurag" >& file_5.txt

printf "\n4) Print the STDOUT or STDERR in a single file 'file6.txt'\n"

# method 1
echosfsl "Hi Anurag" >file6.txt 2>&1
# method 2
echosfsl "Hello Anurag" >& file_6.txt

: "
OUTPUT:

1) Print the STDOUT in 'file1.txt' and STDERR in 'file2.txt'

2) Print the STDOUT in 'file3.txt' and STDERR in 'file4.txt'

3) Print the STDOUT or STDERR in a single file 'file5.txt'

4) Print the STDOUT or STDERR in a single file 'file6.txt'
"