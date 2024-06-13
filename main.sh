#!/usr/bin/env bash

# The File is to store student records
STUDENT_FILE="students-list_0524.txt"

# This Function is to display a welcome message
welcome() {
    echo "-------------------------------------------"
    echo "Welcome to the ALU Student Registration System"
    echo "Bachelor of Software Engineering Cohort List"
    echo "-------------------------------------------"
}

# Function to display the menu
show_menu() {
    echo "Please choose an option:"
    echo "1. Create a student record"
    echo "2. View all students"
    echo "3. Delete a student by ID"
    echo "4. Update a student record by ID"
    echo "5. Exit"
}

# Function to create a student record
create_student() {
    echo "Enter student email:"
    read email
    echo "Enter student age:"
    read age
    echo "Enter student ID:"
    read student_id

    echo "$student_id,$email,$age" >> "$STUDENT_FILE"
    echo "Student record added."
}

# Function to view all students
view_students() {
    if [ -f "$STUDENT_FILE" ]; then
        echo "ID, Email, Age"
        cat "$STUDENT_FILE"
    else
        echo "No student records found."
    fi
}

# Function to delete a student by ID
delete_student() {
    echo "Enter student ID to delete:"
    read student_id

    if [ -f "$STUDENT_FILE" ]; then
        grep -v "^$student_id," "$STUDENT_FILE" > temp.txt && mv temp.txt "$STUDENT_FILE"
        echo "Student record deleted if it existed."
    else
        echo "No student records found."
    fi
}

#This Function is to update a student record by ID
update_student() {
    echo "Enter student ID to update:"
    read student_id

    if grep -q "^$student_id," "$STUDENT_FILE"; then
        echo "Enter new student email:"
        read new_email
        echo "Enter new student age:"
        read new_age

        grep -v "^$student_id," "$STUDENT_FILE" > temp.txt
        echo "$student_id,$new_email,$new_age" >> temp.txt
        mv temp.txt "$STUDENT_FILE"
        echo "Student record updated."
    else
        echo "Student ID not found."
    fi
}

# Loop to main script
welcome
while true; do
    show_menu
    echo "Choose an option:"
    read choice

    case $choice in
        1) create_student ;;
        2) view_students ;;
        3) delete_student ;;
        4) update_student ;;
        5) echo "Exiting..."; break ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done

