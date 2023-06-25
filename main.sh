#!/usr/bin/env bash
# Manages the Bachelor of Software Engineering cohort list of students.

while true;
do
    read -rp "What operation would you like to perform {Create|View|Delete|Update|Exit}: " name
    case $name in
	"Create")
	    # Creates new entry in students-list_0333.txt
	    read -rp "Enter student email: " email
	    read -rp "Enter student age: " age
	    read -rp "Enter student ID: " ID
	    echo "$email:$age:$ID" >>students-list_0333.txt
	    ;;
	"Delete")
	    # Deletes specified entry in students-list_0333.txt
	    read -rp "Enter student ID: " ID
            grep -v $ID < students-list_0333.txt > modified-students-list_0333.txt
            mv modified-students-list_0333.txt students-list_0333.txt
	    ;;
	"Update")
	    # Updatescspecified entry in students-list_0333.txt
	    read -rp "Enter student ID for update: " ID
	    old=$(cat students-list_0333.txt | grep $ID)
	    # If no record was found
	    if [ -z "$old" ];
	    then
                echo "No ID match found"
                continue
	    fi
	    # Print out old entry
            echo "$old"
	    read -rp "Enter new student email: " email
	    read -rp "Enter new student age: " age
	    new="$email:$age:$ID"
	    # Replace with new entry
	    sed -i "s/$old/$new/g" students-list_0333.txt
	    ;;
	"View")
	    # Print all entries to stdout
	    cat students-list_0333.txt
	    ;;
	"Exit")
	    break
	    ;;
	*)
	    ;;
    esac
done
