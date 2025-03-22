#!/bin/bash

# What is a variable: It's generally used to hold some vaule dynamicaly.
# We will define the vairables as mentioned below here a , b, c are vriables and 10,20,xyz respectively are vules

a=10     #  a is an integer
b=10     # b is an integer
c=xyz    # c is a string

# There is no concept of data types in shell scripting by default everything is a string
# If your input or variables haing some special characters always include them in the double quotes

# How to print the variables : Using special characters
# $ : Dollar symbol is the special character is used to print the variables.
# Syntax:  echo $a

echo a                  # Prints  just a
echo $a                 # Print the vaule of a
echo ${a}               # $a and ${a} both are same they both do the same job but prefer to use with in the flower bracket



