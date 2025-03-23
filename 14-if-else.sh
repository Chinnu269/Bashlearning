#!/bin/bash

# If condition is available in 3 formats

# 1) simple if
# 2) if else
# 3) else if

<<COMMENT

1) simple If :

if [ expression ]; then
   commands

fi

# simple if: Commands are getting executed only if the expression is true
# What will happen if the expression is false ? simple,commands won't be executed

2) If-else:

if [ expression ]; then
    command1
else
    command2

fi

# If expression is true command 1 will be executed if expression is not true then command 2 will be executed

3) Else-if:

if [ expression1 ]; then
  command1
elif [ expression2 ]; then
  command2
elif [ expression3 ]; then
  command3

else

 command4

fi

COMMENT

# what is an expression? When your using operators to perform something is called expression

<<COMMENT

Expressions are categorized into 3 types
1) Numbers
2) Strings
3) Files
-----------------------
Operators on numbers
 -eq, -ne, -gt, -ge, -lt, -le

 [ 1 -eq 1 ]
 [ 1 -ne 1 ]

 --------------------------
 Operators on Strings:

 = , == , !=

 Eg:  [ abc=abc ]

 -z , -n 

    [ -z "$var" ] -> This is true if var is not having any data
    [ -n "$var" ] _> This is true if var is having any data

    -z and -n are inverse proportional options


Operators on files:

    Lot of operators are available and you can check them using man pages of bash 

    [ -f file ] -> True of file exists and file is a regular file 

    [ -d xyz ]  -> True if file exists and it is a directory

    ### Explore the file types, There are 7 types on files in Linux.


COMMENT

