#!/bin/bash

read -p "Enter a number of terms: " n

if ! [[ "$n" =~ ^[0-9]+$ ]]; then
	echo "Invalid input"
	exit 1
fi

echo "Fibonacci series"

a=0
b=1

for ((i=0; i<n; i++))
do
	echo -n "$a "

	#calculate next fibo
	c=$((a + b))
	a=$b
	b=$c
done

#print star patther
echo "Star pattern:"

for ((i=0; i<n; i++))
do
	for ((j=1; j<=i; j++))
	do
		echo -n "* "
	done
	echo
done
