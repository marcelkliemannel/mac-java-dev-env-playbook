#!/bin/bash

backup_folder="$1"

if [ ! -d "$backup_folder" ]; then
    echo "Backup folder does not exist."
    exit 1
fi

while IFS= read -r file_path; do
    if [[ $file_path == "~"* ]]; then
        file_path="${file_path/#\~/$HOME}"
    fi

    if [ -f "$file_path" ]; then
        filename=$(basename "$file_path")
        cp "$backup_folder/$filename" "$file_path"
    elif [ -d "$file_path" ]; then
        dir_name=$(basename "$file_path")
        rsync -a "$backup_folder/$dir_name/" "$file_path/"
    else
        echo "Skipping $file_path: Not a regular file or directory."
    fi
done < backup_paths.txt
