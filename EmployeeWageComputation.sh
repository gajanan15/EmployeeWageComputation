#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
#constant
WORKING_PARTTIME=1
WORKING_FULLTIME=2
EMPLOYEE_RATE_PER_HR=20
employeeCheck=$((RANDOM%3))

case $employeeCheck in
	$WORKING_FULLTIME)
		EMPLOYEE_HRS=8
		;;
	$WORKING_PARTTIME)
		EMPLOYEE_HRS=4
		;;
	*)
		EMPLOYEE_HRS=0
		;;
esac
salary=$(($EMPLOYEE_HRS*$EMPLOYEE_RATE_PER_HR))
