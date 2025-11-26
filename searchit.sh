#!/bin/bash

echo -e "\n\t\t----------"
echo -e "\t\tSEARCH IT"
echo -e "\t\t----------"

read -p "Enter Filename or Foldername to search: " filename

if [ -z "$filename" ]; then
    echo "Error: No name entered!"
    exit 1
fi

echo -e "\n\nSearching folders with the name $filename ..."

	find / -type d -name "$filename" 2>/dev/null

echo -e "\n\nSearching files with the name $filename ..."

	find / -type f -name "$filename" 2>/dev/null

echo -e "\n\nSearching all files and extensions related to $filename ..."
	find / -type f -name "$filename.*" 2>/dev/null
echo
echo -e "Search completed!\n"


