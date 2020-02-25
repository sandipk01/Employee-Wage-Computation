#!/bin/bash -x

printf "Welcome To Employee Wage Computation\n"

#CONSTANTS
RANDOM_END=2
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
HALF_DAY_HOUR=4
IS_PRESENT=1
IS_FULL_DAY=0
IS_HALF_DAY=1

#VARIABLES
randomNumber=0
randomNumber=$(( RANDOM % $RANDOM_END ))
randomNumber2=$(( RANDOM % $RANDOM_END ))
salary=0
attendance=0
totalSalary=0
months=20

for(( index=0; index<20; index++ ))
do
	case $randomNumber in
		$IS_PRESENT)
			attendance="Present"
			case $randomNumber2 in
				$IS_FULL_DAY)
					salary=$(( $WAGE_PER_HOUR * $FULL_DAY_HOUR ))
			;;
				$IS_HALF_DAY)
					salary=$(( $WAGE_PER_HOUR * $HALF_DAY_HOUR ))
			;;
			esac
		;;
		*)
			attendance="Absent"
	esac
   	totalSalary=$(( $totalSalary + $salary ))
done
	printf " Employee monthly salary is : $totalSalary \n"
