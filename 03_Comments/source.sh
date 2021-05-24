#! /bin/bash

printf "1) Single Line Comment:\n"
# I am single line comment

printf "\n2) Multi Line Comment:\n"
: '
Hi My name is Kumar Anurag.
Whats up?
echo
'

printf "\n3) Bash heredoc:\n"
: '
KNOWLEDGE CLOUD: HereDoc

In Bash and other shells like Zsh,
a Here document (Heredoc) is a type
of redirection that allows you to
pass multiple lines of input to a
command

SYNTAX:

[COMMAND] <<[-] DELIMITER
  HERE-DOCUMENT
DELIMITER
'

cat << anurag  # anurag here is start delimiting identifier
Here we can write anything...
And whatever we type here, is gonna print in output
This is amazing, isn't it?
:)
anurag
# anurag on above line is end delimiting identifier

: "
OUTPUT:

1) Single Line Comment:

2) Multi Line Comment:

3) Bash heredoc:
Here we can write anything...
And whatever we type here, is gonna print in output
This is amazing, isn't it?
:)
"