#!/bin/bash
#this line tells to run/interpret the script with bash shell

# the $1 is first argument to command line
# the >> is redirect comand in front of it to other place  (maybe write to file)

#echo $1 >> notes.txt

# the $* takes all parameters
#echo $* >> notes.txt

#pass the date command

echo $(date): $*>> notes.txt
#print on the command line
echo Note saved: $*