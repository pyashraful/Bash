#!/bin/bash
len=3
arr=()
or=0

for((i=0; i<$len; i++))
do
  read arr[$i]
done


for((i=0; i<${len}-1; i++))
do
  if (( ${arr[$i]} < ${arr[$i+1]} ))
  then
    ((or++))
  fi
done
# echo $or
if (($or == 2))
then
  echo "ordered "
else
  echo "unordered"
fi