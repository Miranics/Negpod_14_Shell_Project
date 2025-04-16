# Negpod_14_Shell_Project                
               
# Team Members 
- **Mwiza Cannelle**
- **Sharif Kiviiri**
- **Nanen Miracle Mbanaade***         
- **David Muotoh-Francis**
- **DaVinci Murengezi Gisanura**     
- **Fatoumata Ndiaye**
- **Samuel Niyonkuru**  
                  
# Student Registration System   

This shell-based application manages student records for the Bachelor of Software Engineering cohort. It will allow users to create, view, delete, and update student records, as well as extract student emails. 

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

### In Running the Main Script

1. Ensure the script has execute permissions:
    ```sh
    chmod +x main.sh
    ```
2. Run the script:
    ```sh
    ./main.sh
    ```

### In Main Script Menu Options

1. **Create student record**: Prompts for student email, age, and ID, then saves the record.
2. **View all student records**: Displays all student records in the terminal.
3. **Delete a student record**: Prompts for student ID and deletes the corresponding record.
4. **Update a student record**: Prompts for student ID and updates the corresponding record with new details.
5. **Exit**: Exits application.
    
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

The main shell script to manage student records. It includes functions to create, view, delete, and update records, and a loop to display a menu and also handle user input.
1. create Student Record
2. Save student Record
3. view all students
4. delete student record
5. Update student record
6. Exit the application
7. Select and save student Emails
### students-list_1023.txt         

The text file where student records are stored. Each record is stored in the format:
Expected files to have in question 2:
1. Move-to-directory.sh
2. Negpod_id-q1
3. backup-Negpod_ID.sh
the application will manage a list of student records.
