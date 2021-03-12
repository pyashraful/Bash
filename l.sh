#!/bin/bash

read len

echo ${len}

for (( i=0; i<${len}; i++ ))
do
  read arr
  if[ ${#arr} -gt 5 || ${#arr} -eq 5 ]
  then
    echo "3"
  else
    if(( (arr[0]=='o'&&arr[1]=='n')||(arr[0]=='o'&&arr[2]=='e')||(arr[1]=='n'&&arr[2]=='e') ))
    then
      echo "2"
    else
      echo "1"
    fi
  fi
done
