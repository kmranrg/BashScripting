#! /bin/bash

printf "\n1) Read from a file (by taking filename as input from user) and print the output\n"

lineNo=1
while read line || [ "$line" ]
do
    echo "Line No. $lineNo: $line"
    lineNo=$((lineNo+1))
done < "${1:-/dev/stdin}" # here `1` will take one filename as input on terminal and `/dev/stdin` is the path of stdin

printf "\n2) Read from a file 'demo.txt' and print the output\n"

file="demo.txt"
lineNo=1
while read line || [ "$line" ]
do
    echo "Line No. $lineNo: $line"
    lineNo=$((lineNo+1))
done < $file

: "
OUTPUT:

1) Read from a file (by taking filename as input from user) and print the output
Line No. 1: - My name is Kumar Anurag.
Line No. 2: - My Instagram ID is kmranrg.

2) Read from a file 'demo.txt' and print the output
Line No. 1: - My name is Kumar Anurag.
Line No. 2: - My Instagram ID is kmranrg.
"