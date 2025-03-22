#!/bin/bash

DATE="$(date +%D)"      # when ever we are giving input as a dynamic variabe we have to keep it in paranthesis() and giving input as a dynmic variable is called Expression
echo "Today's Date is ${DATE}"
echo "Today's Date is \e[36m ${DATE} \e[0m"

Sessions_Count="$(who |wc -l)"
echo "Number of active sessions are $Sessions_Count"
echo "Number of active sessions are \e[36m ${Sessions_Count} \e[0m"

