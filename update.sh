#!/usr/bin/env bash

#for i in $(echo *); do echo $i; cd $i; git pull; cd ..; done

for i in $(echo *)
do
	if [ -d $i ]
	then
		printf "\e[1;32m[\e[1;34m+\e[1;32m]\e[0;m Updating %30s: " $i
		cd $i
		git pull
		cd ..
	fi
done
