#!/bin/bash

read -p "Enter a year: " year

# validate year
if ! [[ "$year" =~ ^[0-9]+$ ]] || [ "$year" -eq 0 ]; then
	echo "Invalid year!"
	exit 1
fi

# check leap year condition

if (( year % 400 == 0 )); then
	echo "$year is a leap year."
elif (( year % 100 == 0 )); then
	echo "$year is not a leap year"
elif (( year % 4 == 0 )); then
	echo "$year is a leap year"
else
	echo "$year is not a leap year"
fi

read -p "Enter a number " num

# validate interger input
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
	echo "Invalid number: "
	exit 1
fi

# check positive, negetive and zero

if (( num > 0 )); then
	echo "$num is Positive"
elif (( num < 0 )); then
	echo "$num is negative"
else
	echo "$num is Zero."
fi

# check for even and odd

if (( n % 2 == 0 )); then
	echo "$num is even"
else
	echo "$num is odd"
fi
