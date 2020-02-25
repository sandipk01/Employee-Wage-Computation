#!/bin/bash -x

printf "Welcome To Employee Wage Computation\n"

#ARRAY
declare -A wage
#CONSTANTS
RANDOM_END=2
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
HALF_DAY_HOUR=4
IS_PRESENT=1
IS_FULL_DAY=0
IS_HALF_DAY=1
MONTH=20
TOTAL_HOURS=100

#VARIABLES
randomNumber=0
randomNumber2=0
salary=0
attendance=0
totalSalary=0
totalWorkingHours=0
days=0
hours=0

#GET HOURS 8 or 4
function getHours(){
	 case $1 in
		$IS_FULL_DAY)
			echo $FULL_DAY_HOUR
		;;
		$IS_HALF_DAY)
			echo $HALF_DAY_HOUR
		;;
		*)
			echo 0
		;;
	esac
}

#WHILE DAY IS LESS THAN 20 AND HOURS IS LESS THAN 100 TILL CHECK
while [ $days -lt $MONTH -a $totalWorkingHours -lt $TOTAL_HOURS ]
do
	#RANDOM NUMBER FOR ATTENDANCE
	randomNumber=$(( RANDOM % $RANDOM_END ))
	#RANDOM NUMBER FOR FULL & HALF DAY
   randomNumber2=$(( RANDOM % $RANDOM_END ))
	days=$(( $days + 1 ))
	case $randomNumber in
		$IS_PRESENT)
			hours="$( getHours $(( $randomNumber2 )) )"
		   salary=$(( $WAGE_PER_HOUR * $hours ))
		;;
		0)
			hours=0
			salary=0
		;;
	esac
   	totalSalary=$(( $totalSalary + $salary ))
		wage[$days]=$salary
		totalWorkingHours=$(( $totalWorkingHours + $hours ))
done

length=$(( ${#wage[@]} ))

#DISPLAYING WAGES
for (( index=1; index<=$length ; index++ ))
do
	printf "${index} ---- ${wage[$index]}\n"
done

printf "Employee monthly salary is : $totalSalary \n"
