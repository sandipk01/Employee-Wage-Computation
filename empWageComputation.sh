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

if [ $randomNumber -eq $IS_PRESENT ]
	then
		attendance="Present"
		if [ $randomNumber2 -eq $IS_FULL_DAY ]
			then
				salary=$(( $WAGE_PER_HOUR * $FULL_DAY_HOUR ))
			elif [ $randomNumber2 -eq $IS_HALF_DAY ]
				then
					salary=$(( $WAGE_PER_HOUR * $HALF_DAY_HOUR ))
		fi
	else
		salary=0
		attendance="Absent"
fi

	printf " $attendance & salary is : $salary \n"
