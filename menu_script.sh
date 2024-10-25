#!/bin/bash

# Reminder Banner
echo -e "\033[1;33m=====================\033[0m"
echo -e "\033[1;31m  Remember to save   \033[0m"
echo -e "\033[1;31m all important files  \033[0m"
echo -e "\033[1;31m   in the /data      \033[0m"
echo -e "\033[1;33m=====================\033[0m"

while true; do
    echo "======================================"
    echo "   Tool Menu"
    echo "======================================"
    echo "1. Create a new directory"
    echo "2. List files in /data"
    echo "3. Install a tool in /data/tools"
    echo "4. List all subdirectories and files in /data"
    echo "5. Exit"
    read -p "Choose an option [1-5]: " option

    case $option in
        1)
            read -p "Enter directory name: " dir_name
            mkdir -p /data/"$dir_name"
            echo "Directory '$dir_name' created."
            ;;
        2)
            echo "Files in /data:"
            ls /data
            ;;
        3)
            read -p "Enter the tool name to install: " tool_name
            echo "Installing $tool_name..."
            # Use sudo for apt install and move
            sudo apt install -y "$tool_name" && sudo mv /usr/bin/"$tool_name" /data/tools/
            echo "$tool_name installed and moved to /data/tools."
            ;;
        4)
            echo "Listing all subdirectories and files in /data:"
            tree /data
            ;;
        5)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
