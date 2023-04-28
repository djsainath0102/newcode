#!/bin/bash 
#script arithmetic operation 
#
read -p "enter the first number:" num1
read -p "enter the second number:" num2
z=$(($num1+$num2))
echo "the addition is : $z"
z=$(($num1-$num2))
echo "the subraction is : $z"
z=$(($num1*$num2))
echo "the multiplication is : $z"
z=$(($num1/$num2))
echo "the division is : $z"
#End of script

