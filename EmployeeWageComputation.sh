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

#Dictionary
declare -A empDailyWage

function getWorkingHours() {
	case $1 in
		$WORKING_FULLTIME)
			employeeHrs=8
			;;
		$WORKING_PARTTIME)
			employeeHrs=4
			;;
		*)
			employeeHrs=0
			;;
	esac
	echo $employeeHrs
}

function calculateDailyWage() {
	local employeeHours=$1
	employeeWage=$(($employeeHours*$EMPLOYEE_RATE_PER_HR))
	echo $employeeWage
}

while [[ $totalEmployeeHours -lt $MAX_HOURS_IN_MONTH && $totalWorkingDays -lt $NUMBER_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workingHours="$( getWorkingHours $((RANDOM%3)) )"
	totalEmployeeHours=$(($totalEmployeeHours + $workingHours))
	empDailyWage[Day" $totalWorkingDays"]="$( calculateDailyWage $workingHours)"
done
totalSalary="$( calculateDailyWage $totalEmployeeHours)"
echo "Daily Wage " ${empDailyWage[@]}
echo ${!empDailyWage[@]}
