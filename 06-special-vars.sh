#!/bin/bash

# Special variables will give some special properties to your variables
# Few of the special variables are $0 to $9, $?, $#, $*, $@

echo $0   # prints the current script name that your executing
echo "Executed script name is : $0"

echo "Name of the top selled cars in india is $1"
echo "Name of the current topic is $2"
echo "Who is the PM of India:$3"

# bash scriptname.sh arg1 arg2 arg3  ----> (bash scriptname.sh $1 $2 ....$9)

echo $$    # It is going to print the PID of the current process
echo $#    # It is going to print the number of arguments we are passing
echo $?    # It is going to print the exit code of the last command 
echo $*    # It is going to print the list of arguments used
echo $@    # It is going to print the list of aguments used



