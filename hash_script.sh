#!/bin/bash

def_input="0819"

if [ $# -eq 0 ]; then
  echo "No argument provided. Using default argument:$def_input"
  input="$def_input"
else
  input="$1"
fi


if [[ "$input" =~ ^[0-9]{4}$ ]]; then
 echo "Input is valid"
else
 echo "Invalid input. Exiting"
 exit 1
fi

hash=$(echo -n $input | sha256sum | awk '{print $1}')

echo "Hash: "$hash""
echo "$hash">hash_output.txt 
