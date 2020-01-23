#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
isPresent=1
empCheck=$((RANDOM%2))
if [ $isPresent -eq $empCheck ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
