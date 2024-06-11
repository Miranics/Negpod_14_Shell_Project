# Negpod_14_Shell_Project
# Student Registration System

This is a shell-based application to manage student records for the Bachelor of Software Engineering cohort. The application allows users to create, view, delete, and update student records, as well as extract student emails.

## Files in the Project

- **main.sh**: The main script to manage student records.
- **students-list_1023.txt**: The file where student records are stored.
- **select-emails.sh**: Script to extract student emails from the records.
- **student-emails.txt**: The file where extracted emails are saved.

## Features

1. **Create Student Record**: Add a new student record by providing email, age, and student ID.
2. **View All Student Records**: Display all saved student records.
3. **Delete a Student Record**: Remove a student record using the student ID.
4. **Update a Student Record**: Update an existing student record using the student ID.
5. **Exit**: Exit the application.
6. **Extract Student Emails**: Extract all student emails and save them to `student-emails.txt`.

## How to Use

### Running the Main Script

1. Ensure the script has execute permissions:
    ```sh
    chmod +x main.sh
    ```
2. Run the script:
    ```sh
    ./main.sh
    ```

### Main Script Menu Options

1. **Create student record**: Prompts for student email, age, and ID, then saves the record.
2. **View all student records**: Displays all student records in the terminal.
3. **Delete a student record**: Prompts for student ID and deletes the corresponding record.
4. **Update a student record**: Prompts for student ID and updates the corresponding record with new details.
5. **Exit**: Exits the application.

### Extracting Emails

1. Ensure the script has execute permissions:
    ```sh
    chmod +x select-emails.sh
    ```
2. Run the script to extract emails:
    ```sh
    ./select-emails.sh
    ```

The emails will be saved in `student-emails.txt`.

## File Descriptions

### main.sh

The main shell script to manage student records. It includes functions to create, view, delete, and update records, and a loop to display a menu and handle user input.

### students-list_1023.txt

The text file where student records are stored. Each record is stored in the format:

