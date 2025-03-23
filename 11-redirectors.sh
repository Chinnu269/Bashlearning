#!/bin/bash

# Redirectors are 2 types in Bash
# 1) Input Redireector  (which means takes the I/P from the file) :  <  (Ex: mysql </tmp/studentapp.sql)
# 2) Output Redirector  (which means routing the O/P to a file)   :  > or 1> or >> (>> appends the latest o/p with the existing content)

#Outputs

# 1) standard output    > or 1> or >>
# 2) standard error     2> or 2>>
# 3) standard output & standard error  &> or &>>

# ls -ltr > output.txt     # redirects the output to the output.txt
# ls -ltr >> output.txt    # redirects and appends the output.txt
# ls -ltr 2> output.txt    # redirects only error to output.txt
# ls -ltr &> output.txt    # redirects both output and error to the output.txt


