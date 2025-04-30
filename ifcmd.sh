#!/bin/bash
read -p "Enter a number" input

if [[ -z "$input" ]]; then
 echo "Input is empty."
elif ((input%2 == 0)); then
    echo "$input is even"
else
    echo "$input is odd"
fi
