#!/bin/bash

# What is a variable: It's generally used to hold some vaule dynamicaly.
# We will define the vairables as mentioned below here a , b, c are vriables and 10,20,xyz respectively are vules

a=10     #  a is an integer
b=10     # b is an integer
c=xyz    # c is a string
DATE="22March2025"

# There is no concept of data types in shell scripting by default everything is a string
# If your input or variables haing some special characters always include them in the double quotes

# How to print the variables : Using special characters
# $ : Dollar symbol is the special character is used to print the variables.
# Syntax:  echo $a

echo a                               # Prints  just a
echo "print the value of a:$a"       # Print the vaule of a
echo "print the vaule of a: ${a}"    # $a and ${a} both are same they both do the same job but prefer to use with in the flower bracket
echo "print the vaule of X: ${x}"    # we are not defined any vaule of x but trying to print it gives "Null" it doesn't through any error
echo "Today's date is: ${DATE}"      # Tp print the date,it is a static variable

#[]  ---> Square bracket
#()  ---> Paranthesis
#{}  ---> Flower bracket
