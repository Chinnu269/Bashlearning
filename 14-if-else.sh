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



