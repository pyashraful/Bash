#!/bin/bash
#Convert Number of Days to Years, Months & Days
echo "Enter number"
read int

y=$(($int/360)) #Calculating years
m=$(($(($int-$(($y*360))))/30)) #Calculating Months
d=$(($int-$(($(($y*360))+$(($m*30)))))) #Calculating yeaDaysrs
echo $y
echo $m
echo $d