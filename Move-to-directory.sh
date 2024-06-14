#!/usr/bin/env bash

#negpod ID
NEG_POD_ID=14
DIR_NAME="negpod_${NEG_POD_ID}-q1"

# Files to move
FILES=("main.sh" "students-list_0524.txt" "select-emails.sh" "student-emails.txt")

# Create the directory if it doesn't exist
if [ ! -d "$DIR_NAME" ]; then
    mkdir "$DIR_NAME"
    echo "Directory $DIR_NAME created."
else
    echo "Directory $DIR_NAME already exists."
fi

# Move the files to the directory
for FILE in "${FILES[@]}"; do
    if [ -e "$FILE" ]; then
        mv "$FILE" "$DIR_NAME/"
        echo "Moved $FILE to $DIR_NAME/"
    else
        echo "File $FILE does not exist."
    fi
done
