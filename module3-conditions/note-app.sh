#!/bin/bash

#get the date
date=$(date)

#get topic
topic=$1

#braces help with variable name start and end
filename="${topic}notes.txt"

#ask user for input
read -p "Your Note:" note

if [[ $note ]]; then
    echo $date: $note >> "$filename"
    echo "Note '$note' saved to $filename"
else
    echo "No input, note is not saved"
fi