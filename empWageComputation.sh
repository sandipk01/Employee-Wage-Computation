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

if [ $randomNumber -eq $IS_PRESENT ]
	then
		printf "Present\n"
	else
		printf "Absent\n"
fi
