#!/bin/bash

# Validate the user who is running the script is a root user or not

USER_ID=$(id -u)
 
if [ $USER_ID -ne 0 ]; then
echo -e "\e[31m Script should be executed by the root user or sudo privilages \e[0m \n Example: sudo bash frontend"
exit 1
fi

echo " Configuring frontend "
dnf install nginx -y  &>> /tmp/frontend.log

