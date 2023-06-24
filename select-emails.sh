#!/usr/bin/env bash
# Script separates emails from other info in to separate file 'student-emails.txt'

cut -d ":" -f 1 < students-list_0333.txt > student-emails.txt
