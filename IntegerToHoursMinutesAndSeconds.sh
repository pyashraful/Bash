#!/bin/bash

echo "Enter number"
read sec

h=$(($sec/3600))
min=$(($(($sec-$((h*3600))))/60))
s=$(($sec-$((h*3600))-$((min*60))))

echo $h
echo $min
echo $s