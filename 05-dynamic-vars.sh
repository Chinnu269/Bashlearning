#!/bin/bash

DATE="$(date +%D)"      # when ever we are giving input as a dynamic variabe we have to keep it in paranthesis() and giving input as a dynmic variable is called Expression
echo "Today's Date is ${DATE}"
echo -e "Today's Date is \e[34m ${DATE} \e[0m"

Sessions_Count="$(who |wc -l)"
echo "Number of active sessions are $Sessions_Count"
echo -e "Number of active sessions are \e[34m $Sessions_Count \e[0m"

echo $$    # It is going to print the PID of the current process
echo $#    # It is going to print the number of arguments we are passing
echo $?    # It is going to print the exit code of the last command 