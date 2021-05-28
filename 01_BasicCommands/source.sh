#! /bin/bash

# How to execute this file: Open terminal and type the following commands
# (i) chmod +x source.sh
# (ii) bash source.sh

echo "1. Together hash symbol and excalamation symbol is known as Shebang(#!)"

printf "\n2. Print all the shells avaialable in the system:"
cat /etc/shells

printf "\n3. How to check the path of bash:\n"
which bash

printf "\n4. Creating a new shell script file:\n"
touch new_file.sh

printf "\n5. List all files and folders present in the directory:\n"
ls

printf "\n6. Making the shell script executable:\n"
chmod +x new_file.sh

printf "\n7. List all files and folders present in the directory:\n"
ls -al

# OUTPUT:

# 1. Together hash symbol and excalamation symbol is known as Shebang(#!)

# 2. Print all the shells avaialable in the system:# /etc/shells: valid login shells
# /bin/sh
# /bin/bash
# /usr/bin/bash
# /bin/rbash
# /usr/bin/rbash
# /usr/bin/sh
# /bin/dash
# /usr/bin/dash

# 3. How to check the path of bash:
# /usr/bin/bash

# 4. Creating a new shell script file:

# 5. List all files and folders present in the directory:
# new_file.sh  source.sh

# 6. Making the shell script executable:

# 7. List all files and folders present in the directory:
# total 12
# drwxrwxr-x 2 kmranrg kmranrg 4096 May 23 19:52 .
# drwxrwxr-x 5 kmranrg kmranrg 4096 May 23 19:51 ..
# -rwxrwxr-x 1 kmranrg kmranrg    0 May 23 19:52 new_file.sh
# -rwxrwxr-x 1 kmranrg kmranrg  653 May 23 19:51 source.sh