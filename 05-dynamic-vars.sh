#!/bin/bash

DATE="$(date +%D)"      # when ever we are giving input as a dynamic variabe we have to keep it in paranthesis() and giving input as a dynmic variable is called Expression
echo "Today's Date is ${DATE}"

Sessions_Count="$(who |wc -l)"
echo "Number of active sessions are $Sessions_Count"

