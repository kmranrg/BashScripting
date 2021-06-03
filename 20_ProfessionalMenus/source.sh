#! /bin/bash

printf "\n[1] Select\n"

select car in BMW MERCEDESE TESLA ROVER HONDA
do
    echo "You have selected: $car" # problem: it will not show any car if you type any thing other than 1..5
    break
done

# solution for above problem
printf "\n[2] Select with switch-case\n"

select car in BMW MERCEDESE TESLA ROVER HONDA
do
    case $car in
    BMW)
        echo "BMW selected"
        ;;
    MERCEDESE)
        echo "MERCEDESE selected"
        ;;
    TESLA)
        echo "TESLA selected"
        ;;
    ROVER)
        echo "ROVER selected"
        ;;
    HONDA)
        echo "HONDA selected"
        ;;
    *)
        echo "Invalid Input! Please select between 1..5"
        ;;
    esac
    break
done

printf "\n[3] Make a professional menu, in which if user doesn't type any value then we will give a message to the user after every 3 seconds for typing something\n"

echo "Press any key to continue"

while [ true ]
do
    read -t 3 -n 1 # after every 3 seconds, it will execute the below if-else block
if [ $? = 0 ]
then
    printf "\n\nYou have terminated the script.\n"
    exit;
else
    printf "\n\twaiting for you to press some key sir...\n"
fi
done

: "
OUTPUT:

[1] Select
1) BMW
2) MERCEDESE
3) TESLA
4) ROVER
5) HONDA
#? 2
You have selected: MERCEDESE

[2] Select with switch-case
1) BMW
2) MERCEDESE
3) TESLA
4) ROVER
5) HONDA
#? r
Invalid Input! Please select between 1..5

[3] Make a professional menu, in which if user doesn't type any value then we will give a message to the user after every 3 seconds for typing something
Press any key to continue

        waiting for you to press some key sir...

        waiting for you to press some key sir...

        waiting for you to press some key sir...
w

You have terminated the script.
"