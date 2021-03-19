#!/bin/bash
#Convert a given integer to hours, minutes and seconds
echo "Enter number"
read sec

h=$(($sec/3600)) #Calculating hours
min=$(($(($sec-$((h*3600))))/60)) #Calculating minutes
s=$(($sec-$((h*3600))-$((min*60)))) #Calculating seconds

echo $h
echo $min
echo $s