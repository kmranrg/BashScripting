#! /bin/bash

printf "\nTASK: Make a 'MESSAGE' variable in 'source.sh' script and export it to another script 'secondScript.sh' and then 'echo' the 'MESSAGE' variable value from the 'secondScript.sh'\n\n"

# first of all, let's create the "secondScript.sh"
touch secondScript.sh

# now let's make it executable
chmod +x secondScript.sh

# let's make the 'MESSAGE' variable
MESSAGE="Hello Anurag!"
dollarSymbol="$"
variableName="MESSAGE"

# now let's write the command (in secondScript.sh) to print the "MESSAGE" variable value from 'secondScript.sh'
cat << EOF > secondScript.sh
echo "I am in secondScript.sh file and the message from source.sh is: $dollarSymbol$variableName"
EOF

# finally, we will export the 'MESSAGE' variable to "secondScript.sh"
export MESSAGE
./secondScript.sh

: "
OUTPUT:

TASK: Make a 'MESSAGE' variable in 'source.sh' script and export it to another script 'secondScript.sh' and then 'echo' the 'MESSAGE' variable value from the 'secondScript.sh'

I am in secondScript.sh file and the message from source.sh is: Hello Anurag!
"