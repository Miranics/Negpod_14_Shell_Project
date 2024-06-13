#!/bin/bash

<<<<<<< HEAD
STUDENT_FILE="students-list_0524.txt"

# Function to display menu
=======
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
>>>>>>> 612e15b118bd25270cc582dfa5d362b02fabd702
show_menu() {
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student record"
    echo "4. Update student record"
    echo "5. Exit"
}

# Function to create a student record
create_student() {
    echo "Enter student email: "
    read email
    echo "Enter student age: "
    read age
    echo "Enter student ID: "
    read id

    echo "$email, $age, $id" >> $STUDENT_FILE
    echo "Student record created successfully!"
}

# Function to view all students
view_students() {
    if [ -f $STUDENT_FILE ]; then
        cat $STUDENT_FILE
    else
        echo "No student records found."
    fi
}

# Function to delete a student record
delete_student() {
    echo "Enter student ID to delete: "
    read id

    if [ -f $STUDENT_FILE ]; then
        grep -v ", $id\$" $STUDENT_FILE > temp.txt && mv temp.txt $STUDENT_FILE
        echo "Student record deleted successfully!"
    else
        echo "No student records found."
    fi
}

<<<<<<< HEAD
# Function to update a student record
=======
#This Function is to update a student record by ID
>>>>>>> 612e15b118bd25270cc582dfa5d362b02fabd702
update_student() {
    echo "Enter student ID to update: "
    read id

    if [ -f $STUDENT_FILE ]; then
        grep -v ", $id\$" $STUDENT_FILE > temp.txt && mv temp.txt $STUDENT_FILE
        echo "Enter new student email: "
        read new_email
        echo "Enter new student age: "
        read new_age
        echo "$new_email, $new_age, $id" >> $STUDENT_FILE
        echo "Student record updated successfully!"
    else
        echo "No student records found."
    fi
}

# Main loop
while true; do
    show_menu
    echo "Choose an option: "
    read choice

    case $choice in
        1) create_student ;;
        2) view_students ;;
        3) delete_student ;;
        4) update_student ;;
        5) exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done

