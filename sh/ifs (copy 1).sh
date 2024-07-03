#!/bin/bash
clear
echo "PLease enter a value for 'x'"
read x

echo "Now  a value for 'y'"
read y

sum=$((x+y))			# assigning expression to a single variable (it has no return type like in python)

echo "The sum of x and y is "
echo $sum			# the variable is called with '$'


if [ $x -lt  5 ]; then 		# it's important to have spaces between the brackets and after the keyword if, elif
echo "x is less than 5"

elif [ $x -gt 5 ]; then
echo "x is greater than 5"

elif [ $x -eq 5 ]; then
echo "x is 5!"
fi


echo This is without \"
clear -x 

echo Please enter your credentials for executing battery check script on your system.
read -t3
sudo bash /home/jardagast/.battery_check_advanced.sh
clear -x 
echo Starting nEoFeTcH....
read -t3
neofetch 			# no need for prefix symbol like '$'
clear -x 

echo Let us show you the current time.
read -t3
timedatectl
read -t3
clear -x 
