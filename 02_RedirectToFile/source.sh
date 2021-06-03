#! /bin/bash

printf "1) Print the output in another file\n"
echo "Hello World! Anurag this side." > output_file.txt

printf "\n2) Make 10 text files by just one bash command\n"
touch {1..10}.txt

printf "\n3) Open the output_file.txt in terminal and write some lines at the end\n"
printf "Line: "
cat >> output_file.txt # Hint: Press Ctrl+D to enter the terminal editor mode

printf "\n4) Open the output_file.txt in terminal and overwrite some content into it\n"
printf "Line: "
cat > output_file.txt

# OUTPUT:

# 1) Print the output in another file

# 2) Make 10 text files by just one bash command

# 3) Open the output_file.txt in terminal and write some line at the end
# Line: I am a nice boy.

# 4) Open the output_file.txt in terminal and overwrite some content into it
# Line: My Instagram ID: kmranrg  