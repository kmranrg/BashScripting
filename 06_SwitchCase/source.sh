#! /bin/bash

: "
Theory:

1) The bash case statement is generally used to simplify complex
   conditionals when you have multiple different choices.
2) Using the case statement instead of nested if statements will
   help you make your bash scripts more readable and easier to maintain.
3) The Bash case statement has a similar concept with the Javascript or
   C switch statement.
4) The main difference is that unlike the C switch statement, the Bash
   case statement doesn’t continue to search for a pattern match once it has
   found one and executed statements associated with that pattern.
5) SYNTAX:

    case EXPRESSION in

    PATTERN_1)
        STATEMENTS
        ;;

    PATTERN_2)
        STATEMENTS
        ;;

    PATTERN_N)
        STATEMENTS
        ;;

    *)
        STATEMENTS
        ;;
    esac
"

echo -n "Enter the name of a country: " # `-n` will make the pointer to be on the same line 
read COUNTRY

echo -n "The official language of $COUNTRY is: "

case $COUNTRY in
    Lithuania)
        echo "Lithuanian"
        ;;
    
    Romania | Moldova)
        echo "Romanian"
        ;;
    
    Italy | "San Marino" | Switzerland | "Vatican City")
        echo "Italian"
        ;;
    
    *)
        echo "unknown"
        ;;
esac