#!/bin/bash

# Defining student record file and output file
STUDENT_FILE="students-list_1023.txt"
EMAIL_FILE="student-emails.txt"

# Save Emails to the output file
awk -F, '{print $1}' $STUDENT_FILE > $EMAIL_FILE

echo "Emails have been saved to $EMAIL_FILE."

