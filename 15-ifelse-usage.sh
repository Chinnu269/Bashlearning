#!/bin/bash


echo "Demo on If conditions usage"
Action=$1
if [ "$Action" == "start" ]; then
   echo "Starting Payment Service"
   exit 0
else
  echo "Valid option is start only"
  exit 1
fi

