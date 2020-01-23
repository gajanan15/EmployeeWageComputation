#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

#constant
WORKING_PARTTIME=1
WORKING_FULLTIME=2
EMPLOYEE_RATE_PER_HR=20
NUMBER_OF_WORKING_DAYS=20
MAX_HOURS_IN_MONTH=100

#Variable

totalEmployeeHours=0
totalWorkingDays=0

function getWorkingHours()
{
	case $1 in
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
	echo $EMPLOYEE_HRS
}

while [[ $totalEmployeeHours -lt $MAX_HOURS_IN_MONTH && $totalWorkingDays -lt $NUMBER_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	EMPLOYEE_HRS="$( getWorkingHours $((RANDOM%3)) )"
	totalEmployeeHours=$(($totalEmployeeHours + $EMPLOYEE_HRS))
done
totalSalary=$(($totalEmployeeHours*$EMPLOYEE_RATE_PER_HR))
