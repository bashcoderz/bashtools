#!/bin/bash

echo -e "\n\t\t----------"
echo -e "\t\tSEARCH IT"
echo -e "\t\t----------"

read -p "Enter Filename or Foldername to search: " filename

if [ -z "$filename" ]; then
    echo "Error: No name entered!"
    exit 1
fi

echo -e "\n\n Searching folders with the name $filename ....\n -----------------------------------------"
	find / -type d -name "$filename" 2>/dev/null

echo -e "\n\n Searching files with the name $filename ....\n ---------------------------------------"
	find / -type f -name "$filename" 2>/dev/null

echo -e "\n\n Deep search...\n (Searching all files and folders with the name $filename)\n ----------------------------------------------------"
	find / -name "$filename" -o -name "$filename.*" 2>/dev/null

echo
echo -e "Search completed!\n"


