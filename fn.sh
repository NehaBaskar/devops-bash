#!/bin/bash

function addThree(){
     num1="$1"
     echo "$num1"
     num2=3
     res=$(( $num1 + $num2 ))
     echo "Sum is : $res"
}

if [[ -z "$1" ]]; then
    echo "Input is empty."
else
    addThree "$1"
fi


