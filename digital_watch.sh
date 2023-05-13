#!/bin/bash
# Pzrogram to show a continuous operatig digital watch

#Colour Code for RGB
Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'


<<We use While loop
to make an infinite loop
and at every ieration:
1. Clear terminal
2. Print time using formating date
3. Sleep for 1 sec 
We


while true
do
	clear
	echo $Blue $(date +%T) $Red
	sleep 1s
done

