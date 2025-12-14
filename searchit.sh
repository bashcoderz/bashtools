#!/bin/bash

echo -e "
                   _ _ _ _ _ _ _	
		  /  _ _ _ _ _ _ \	
                 / /		\ \	
		/ /    _ _ _	 \ \	
		| |   | 	 | | 	 __ 	 __	 __		     _____	
	 __	| |   |_ _ _	 | |	|__|	|__|	|	|__|	   |   |	
	|__	| |   |	         | |    |  |	|\	|__	|  |	   |   |	
	 __|	\ \   |_ _ _	 / /	
		 \ \ _ _ _ _ _ _/ /	
		  \ _ _ __ _ _ _ \	
				\ \	
				 \ \	
				  \_\	

								"

echo -e "\t\t\tsearch it\n"
while true; do
	echo -e "\nTo stop search press CTRL+Z. \n"

	echo -e -n "Enter Filename or Foldername to search: " 
	read -r filename

	if [ -z "$filename" ]; then
		echo "Error: No filename entered!"
		exit 1
	fi

	echo
	echo "Searching for: $filename"
	echo "Searching....."
	echo

	find / -iname "*$filename*" 2>/dev/null
	#find / -name "$filename" -o -name "$filename.*" 2>/dev/null
	echo
	echo -e "Search completed!\n\n"

done
