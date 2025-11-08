#!/bin/bash

echo -e "\n\t\t----------"
echo -e "\t\tSEARCH IT"
echo -e "\t\t----------"

read -p "Enter Filename or Foldername to search: " filename

if [ -z "$filename" ]; then
    echo "Error: No filename entered!"
    exit 1
fi

echo
echo "Searching for: $filename"
echo "Searching....."
echo

find / -name "$filename" -o -name "$filename.*" 2>/dev/null

echo
echo -e "Search completed!\n"


