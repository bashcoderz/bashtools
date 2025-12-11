#!/bin/bash

while true; do
echo -e "\n CLEANUP TOOL"
echo -e " ------------"
echo -e "\n Choose 1 to Show files older than 7 days\n \
Choose 2 to Show folders older than 7 days\n \
Choose 3 to Show files and folders older than 7 days\n \
Choose 4 to Remove files older than 7 days\n \
Choose 5 to Remove folders older than 7 days\n \
Choose 6 to Remove unused packages to free some space\n \
Choose 7 to Remove a specific package\n \
Press CTRL+Z to Suspend or Exit
"

read -p "Choose what to clean: " choice
case $choice in
	1)
	echo -e "\nFiles older than 7 days\n"
	sudo find /var/tmp -type f -mtime +7
	;;
	2)
	echo -e "\nFolders older than 7 days\n"
	find /var/tmp -type d -mtime +7
	;;
	3)
	echo -e "\nFiles and folders older than 7 days\n"
	find /var/tmp -mtime +7
	;;
	4)
	echo -e "\nRemove files older than 7 days\n"
	sudo find /var/tmp -type f -mtime +7 -exec rm -f {} \;
	;;
	5)
	echo -e "\nRemove folders older than 7 days\n"
	sudo find /var/tmp -type d -mtime +7 -exec rm -rf {} \;
	;;
	6)echo -e "Removing unused packages..."
	sleep 2 
	sudo apt autoremove;;
	7)read -p "Enter the package name: " package
	echo -e "Removing $package package..."
        sleep 2 
        sudo apt purge $package;;
	*)
	echo -e "\n\nNo such command\n\n"
	;;
esac
done
