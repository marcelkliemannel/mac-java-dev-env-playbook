#!/bin/bash

backup_folder="backup_$(date +"%Y-%m-%d_%H-%M-%S")"

mkdir -p "$backup_folder"

while IFS= read -r file_path; do
    if [[ $file_path == "~"* ]]; then
        file_path="${file_path/#\~/$HOME}"
    fi

    if [ -f "$file_path" ]; then
        cp "$file_path" "$backup_folder/"
    elif [ -d "$file_path" ]; then
        dir_name=$(basename "$file_path")
        cp -R "$file_path" "$backup_folder/$dir_name"
    else
        echo "Skipping $file_path: Not a regular file or directory."
    fi
done < backup_paths.txt
