#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
#Constant
EMPLOYEE_IS_PRESENT=1
employeeCheck=$((RANDOM%2))
if [ $EMPLOYEE_IS_PRESENT -eq $employeeCheck ]
then
	EMPLOYEE_RATE_PER_HR=20
	EMPLOYEE_HRS=8
	salary=$(($EMPLOYEE_HRS*$EMPLOYEE_RATE_PER_HR))
else
	salary=0
fi
