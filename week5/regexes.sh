#!/bin/bash

#5.2


#all sed statements
grep -r sed
# all lines that start with the letter m
grep -r "^m"
# all lines that contain three digit numbers
grep -r '\b[0-9]{3}\b' 
# all echo statements with at least three words
grep -r -i 'echo .*\"[A-Z].* .*[A-Z] .*[A-Z]\"'
# all lines that would make a good password (use your knowledge of cybersecurity to decide what makes a good password).
grep -r '(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.{8,})'