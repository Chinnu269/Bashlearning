#!/bin/bash


echo "Demo on If conditions usage"

Action=$1
if [ "$Action" == "start" ]; then
   echo -e "\e[32m Starting Payment Service \e[0m"
   exit 0

elif [ "$Action" == "stop" ]; then
   echo -e "\e[31m Stopping Payment Service \e[0m"
   exit 1

elif [ "$Action" == "restart" ]; then
   echo -e "\e[33m restarting the payment Service \e[0m"
   exit 2
else
   echo -e "\e[34m valid optins are start or stop or restart \e[0m"
   echo -e "\e[35m Exmaple usage \e[0m :\n \t bash scriptname stop"
   exit 3
fi