#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
#Constant
EMPLOYEE_IS_PRESENT=1
employeeCheck=$((RANDOM%2))
if [ $EMPLOYEE_IS_PRESENT -eq $employeeCheck ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
