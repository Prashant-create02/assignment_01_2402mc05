#!/bin/bash

# check whether their are only three argument

if [ $# -ne 3 ]; then
	echo "Usage: $0 Principal Rate Time"
	exit 1
fi

P=$1
R=$2
T=$3

SI=$(echo "scale=2; $P * $R * $T / 100" | bc)

TOTAL=$(echo "scale=2; $P + $SI" | bc)

echo "Principal = $P"
echo "Rate = $R"
echo "Time = $T"
echo "Simple Interest = $SI"
echo "Total Amount = $TOTAL"
