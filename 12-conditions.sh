#!/bin/bash
# Conditions helps us to execute only if something is true if that is false the conditon won't be executed

# Syntax of case
# # case $var in
#    opt1) command-x ;;
#    opt2) command-y ;;

# #esac

Action=$1
case $Action in
    start)
      echo -e "\e[32m starting the payment service \e[0m"
      ;;
    stop)
     echo -e "\e[31m stoppng the payment service \e[0m"
      ;;
    restart)
      echo -e "\e[33m restartng the payment service \e[0m"
      ;;
    *)
      echo -e "\e[34m valid optins are start or stop or restart \e[0m"
      echo -e "\e[35m Exmaple usage \e[0m :\n \t bash scriptname stop"
      ;;
esac

