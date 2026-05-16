#!/bin/bash

echo "=== Folder Renamer ==="
read -p "Enter the current folder name: " oldname
read -p "Enter the new folder name: " newname

if [ -z "$oldname" ] || [ -z "$newname" ]; then
    echo "Error: Folder names cannot be empty."
    exit 1
fi

if [ ! -d "$oldname" ]; then
    echo "Error: Folder '$oldname' does not exist."
    exit 1
fi

if [ -d "$newname" ]; then
    echo "Error: Folder '$newname' already exists."
    exit 1
fi

mv "$oldname" "$newname"
echo "Success: Folder renamed from '$oldname' to '$newname'!"
