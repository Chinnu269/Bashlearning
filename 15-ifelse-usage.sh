#!/bin/bash


echo "Demo on If conditions usage"

Action=$1
if [ "$Action" == "start" ]; then
   echo "Starting Payment Service"
   exit 0
else if [ "$Action" == "stop" ]; then
   echo "Stopping Payment Service"
   exit 1
else if [ "$Action" == "restart" ]; then
   echo "restarting the payment Service"
   exit 2
else
   echo -e "\e[34m valid optins are start or stop or restart \e[0m"
   echo -e "\e[35m Exmaple usage \e[0m :\n \t bash scriptname stop"
   exit 3
fi

