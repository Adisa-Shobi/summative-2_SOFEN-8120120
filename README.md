#Group coding summative for Y1T1, containing two solutions.


Question 1: Shell Programming
Build an application that will take user input and build the Bachelor of Software Engineering cohort list of students. The application will take in the following information (student email, age, and student ID). Your shell script “main.sh”


With your application, the user should be able to perform the following operations
Create the student record.
Save each student record in a file under the name “students-list_0333.txt”
View all students saved in the file and list them on the terminal
Delete the student in the file (By using the student ID)
Update the student record in the list (By using the student ID)
Exit the application

Searching and sorting into a file
Create a command to select just the emails of the student. Save your command in a shell script file “select-emails.sh”
Save the output in a file “student-emails.txt”


Expected files to have in question 1:
main.sh
Students-list_0333.txt
Select-emails.sh
student-emails.txt




Question 2: Automation with Linux
Create a shell script to automatically move all 4 files created in question 1 in a directory with the name negpod_id-q1 (e.g. “0323-RW-SOFEN-8120120-1_q1”).

Shell script file:  move-to-directory.sh
Directory: negpod_id-q1
Create a shell script to back up the directory created in Question 2, a. to a remote server computer. Each group will create a backup-Negpod_ID.sh (e.g. “backup-0323-RW-SOFEN-8120120-1.sh”)

Shell script file:  backup-Negpod_ID.sh
Details about the remote server:
Host: a0dfc11ba139.a982e858.alu-cod.online

Username:  a0dfc11ba139

Password: 899c79fc532cd0591af1

Location for backing up your directory: /home/sftp-student/03033/summative


Expected files to have in question 2:
Move-to-directory.sh
negpod_id-q1
backup-Negpod_ID.sh
