#!/bin/bash
#function to check palindrome
palindrome()
{
	str="$1"
	rev=""
	
	#reverse the input string
	for ((i=${#str}-1; i>=0; i-- ))
	do
		rev="$rev${str:$i:1}"
	done
	
	#compare original and reversed strins
	if [ "$str" = "$rev" ]; then
		echo "$str is Palindrome"
	else
		echo "$str is not a palindrome"
	fi
}

#function to check a prime number

prime()
{
	num=$1

	# 0 and 1 are not prime
	if (( num < 2 )); then
		echo "$num is not a prime number"
		return
	fi

	for ((i=2; i*i<=num; i++ ))
	do
		if (( num % i == 0 )); then
			echo "$num is not a prime number"
			return
		fi
	done
	echo "$num is a prime number"
}

#main program

read -p "Enter a string or number: " val
palindrome "$val"

if [[ "$val" =~ ^[0-9]+$ ]]; then
	prime "$val"
else
	echo "Prime checking is only for number"
fi
