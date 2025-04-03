#!/bin/bash

set -e

# Validate the user who is running the script is a root user or not

USER_ID=$(id -u)
COMPONENT=frontend
LOGFILE=/tmp/frontend.log
 
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

echo -e "\e[34m Configuring the ${COMPONENT} \e[0m \n"
echo -n "Installing ${COMPONENT}: "
dnf install nginx -y  &>> ${LOGFILE}
stat $?


echo -n "starting nginx: "
systemctl enable nginx  &>> ${LOGFILE}
systemctl start nginx   &>> ${LOGFILE}
stat $?

echo -n "Downloading the ${COMPONENT} component:"
curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/${COMPONENT}/archive/main.zip"  &>> ${LOGFILE}
stat $?

echo -n "clean up of ${COMPONENT}:"
cd /usr/share/nginx/html
rm -rf *   &>> ${LOGFILE}
stat $?

echo -n "Extracting the ${COMPONENT}:"
unzip /tmp/${COMPONENT}.zip   &>> ${LOGFILE}
stat $?

echo -n "Sorting the ${COMPONENT} files:"
mv ${COMPONENT}-main/* .
mv static/* .
rm -rf ${COMPONENT}-main README.md   &>> ${LOGFILE}
mv localhost.conf /etc/nginx/default.d/roboshop.conf
stat $?

echo -n "Restarting ${COMPONENT}:"
systemctl daemon-reload  &>> ${LOGFILE}
systemctl restart nginx  &>> ${LOGFILE}
stat $?





