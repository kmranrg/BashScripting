#! /bin/bash

printf "\n1) Make an array of cars and print the values\n"

cars=("BMW" "Toyota" "Honda")
echo "${cars[@]}" # it will print all the values
echo "${cars[0]} - ${cars[2]} - ${cars[2]}" # printing the values using index no

printf "\n2) Print all the index values of an array\n"

echo "${!cars[@]}"

printf "\n3) Print the length of an array\n"

echo "${#cars[@]}"

printf "\n4) Remove the 1st index value from array and print the array\n"

unset cars[1]
echo "${cars[@]}"
echo "Index: ${!cars[@]}"
echo "Total Elements present in Array: ${#cars[@]}"

printf "\n5) Set a new value to array at index where you previously unset the value\n"

cars[1]="Mercedese"
echo "${cars[@]}"
echo "Index: ${!cars[@]}"
echo "Total Elements present in Array: ${#cars[@]}"

printf "\n6) Change the value of array at index 2\n"

cars[2]="Audi"
echo "${cars[@]}"
echo "Index: ${!cars[@]}"
echo "Total Elements present in Array: ${#cars[@]}"

printf "\n7) Add a new value at index 4 (not index 3)\n"

cars[4]="Rover"
echo "${cars[@]}"
echo "Index: ${!cars[@]}"
echo "Value at Index 3: ${cars[3]}" # there is no value present at index 3
echo "Total Elements present in Array: ${#cars[@]}"

: "
OUTPUT:

1) Make an array of cars and print the values
BMW Toyota Honda
BMW - Honda - Honda

2) Print all the index values of an array
0 1 2

3) Print the length of an array
3

4) Remove the 1st index value from array and print the array
BMW Honda
Index: 0 2
Total Elements present in Array: 2

5) Set a new value to array at index where you previously unset the value
BMW Mercedese Honda
Index: 0 1 2
Total Elements present in Array: 3

6) Change the value of array at index 2
BMW Mercedese Audi
Index: 0 1 2
Total Elements present in Array: 3

7) Add a new value at index 4 (not index 3)
BMW Mercedese Audi Rover
Index: 0 1 2 4
Value at Index 3: 
Total Elements present in Array: 4
"