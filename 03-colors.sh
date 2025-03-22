#!/bin/bash

# Each and every colour which we see on a terminal will have a colour code and we need to use the code based on our need.

#Colours     foreground         Background
#Red           31                41      
#Green         32                42
#Yellow        33                43
#Blue          34                44
#Magenta       35                45
#Cyan          36                46

# Syntax to print the colour text is :

# echo -e "\e[COLOURCODEm yoour message to be printes in colour \e[0m"

echo -e "\e[33m I am printing yellow colour \e[0m"
echo -e "\e[36m I am printing cyan colour \e[0m"
echo -e "\e[35m I am printing Magneta colour \e[0m"

# To print something with foreground + Background colour here is the syntax:


