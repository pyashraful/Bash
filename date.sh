#!/bin/bash

echo "Enter number"
read int

y=$(($int/360))
m=$(($(($int-$(($y*360))))/30))
d=$(($int-$(($(($y*360))+$(($m*30))))))
echo $y
echo $m
echo $d