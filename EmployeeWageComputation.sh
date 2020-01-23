#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
#constant
WORKING_PARTTIME=1
WORKING_FULLTIME=2
EMPLOYEE_RATE_PER_HR=20
employeeCheck=$((RANDOM%3))
if [ $WORKING_FULLTIME -eq $employeeCheck ]
then
	EMPLOYEE_HRS=8
elif [ $WORKING_PARTTIME -eq $employeeCheck ]
then
	EMPLOYEE_HRS=4
else
	EMPLOYEE_HRS=0
fi
salary=$(($EMPLOYEE_HRS*$EMPLOYEE_RATE_PER_HR))
