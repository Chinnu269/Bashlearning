#!/bin/bash

# There are 4 types of commands avaiable

# 1) Binaray ------------->  (./bin ..., ./sbin)
# 2) Aliases --------------> (Aliases are shorcut alias net="netstat")
# 3) Shell Built in commands
# 4) Functions ---> Functions are nothing but a set of commands that can be written in a sequence and called n number of times as per requirement

 # How to declare a Function

 # This is how we can delcare a function 
 # f() {
 #echo hai
 # }

 # This is how we call a function 
# f

# sample() {
#     echo 'Hi' from sample function
#     echo sample function completed
# }
# sample
# echo sample call is completed
# sample

# stat() {
#    echo "The number of sessions opened are: $(who |wc -l)"
#    echo "Today's Date is: $(date +%D)"
# } 
# stat
# sleep 1
# stat
# sleep 2
# stat
# sleep 3
# stat

# How to call a function from another function

Hi() {
    echo "I am Hi function"
    echo "I am here too tell you Hi"
    echo "Hi function completed"
}
stat() {
   echo "The number of sessions opened are: $(who |wc -l)"
   echo "Today's Date is: $(date +%D)"
   echo "Average CPU utillization in last 5 minutes is $(uptime | awk -F : '{print $NF}' | awk -F , '{print $2}')"
   # Calling another function as below
   Hi
} 
stat
