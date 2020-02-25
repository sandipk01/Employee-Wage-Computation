#!/bin/bash -x

printf "Welcome To Employee Wage Computation\n"

#CONSTANTS
RANDOM_END=2
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
IS_PRESENT=1

#VARIABLES
randomNumber=0
randomNumber=$(( RANDOM % RANDOM_END ))
salary=0

if [ $randomNumber -eq $IS_PRESENT ]
	then
		salary=$(( $WAGE_PER_HOUR * $FULL_DAY_HOUR ))
		printf "Present & salary is : $salary\n"
	else
		salary=0
		printf "Absent & salary is : $salary\n"
fi
