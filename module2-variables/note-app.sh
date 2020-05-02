#!/bin/bash

#get the date
date=$(date)

#get topic
topic=$1

filename=${topic}notes.txt

#ask user for input
read -p "Your Note:" note

#double qoutes leaving meaning of variable intact
echo $date: $note >> "$filename"

#print on the command line
#escape the sigle quotes
echo Note \'$note\' saved to $filename