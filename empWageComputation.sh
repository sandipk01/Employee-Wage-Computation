#!/bin/bash -x

printf "Welcome To Employee Wage Computation\n"

#CONSTANTS
RANDOM_END=2

#VARIABLES
randomNumber=0
randomNumber=$(( RANDOM % RANDOM_END ))

if [ $randomNumber -eq 1 ]
	then
		printf "Present\n"
	else
		printf "Absent\n"
fi
