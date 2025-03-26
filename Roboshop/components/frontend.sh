#!/bin/bash

set -e

# Validate the user who is running the script is a root user or not

USER_ID=$(id -u)
 
if [ $USER_ID -ne 0 ]; then
echo -e "\e[31m Script should be executed by the root user or sudo privilages \e[0m \n Example: sudo bash frontend"
exit 1
fi

stat() {
if [ $1 -eq 0 ]; then
  echo -e  "\e[32m success \e[0m"
else
  echo -e "\e[31m Failure \e[0m"
  exit 2
fi

}

echo -e "\e[34m Configuring frontend \e[0m \n"
echo -n "Installing frontend: "
dnf install nginx -y  &>> /tmp/frontend.log
stat $?


echo -n "starting nginx: "
systemctl enable nginx  &>> /tmp/frontend.log
systemctl start nginx   &>> /tmp/frontend.log
stat $?

echo -n "Downloading the frontend component:"
curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"  &>> /tmp/frontend.log
stat $?

echo -n "clean up of frontend:"
cd /usr/share/nginx/html
rm -rf *   &>> /tmp/frontend.log
stat $?

echo -n "Extracting the frontend:"
unzip /tmp/frontend.zip   &>> /tmp/frontend.log
stat $?

echo -n "Sorting the frontend files:"
mv frontend-main/* .
mv static/* .
rm -rf frontend-main README.md   &>> /tmp/frontend.log
mv localhost.conf /etc/nginx/default.d/roboshop.conf
stat $?

echo -n "Restarting frontend:"
systemctl daemon-reload  &>> /tmp/fronend.log
systemctl restart nginx  &>> /tmp/frontend.log
stat $?





