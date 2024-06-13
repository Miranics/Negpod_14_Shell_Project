#!/usr/bin/env bash

# File containing student records
STUDENT_FILE="students-list_0524.txt"
# File to save student emails
EMAIL_FILE="student-emails.txt"

# Check if the student file exists
if [ -f "$STUDENT_FILE" ]; then
    # Extract emails and save to the email file
    cut -d',' -f2 "$STUDENT_FILE" > "$EMAIL_FILE"
    echo "Student emails have been extracted to $EMAIL_FILE."
else
    echo "Student list file not found."
fi

