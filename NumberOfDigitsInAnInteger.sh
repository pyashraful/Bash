#!/bin/bash
#Number of Digits in an Integer

echo "Enter number"
read int
len=${#int}

for((i=0;i<=len-1;i++))
do
  r=$(($int%10))
  int=$(($int/10))

  if(( $r==0 ))
    then
      ((c0++))
  elif(( $r==1 ))
    then
    ((c1++))
  elif(( $r==2 ))
    then
      ((c2++))
  elif(( $r==3 ))
    then
    ((c3++))
  elif(( $r==4 ))
    then
      ((c4++))
  elif(( $r==5 ))
    then
    ((c5++))
  elif(( $r==6 ))
    then
      ((c6++))
  elif(( $r==7 ))
    then
    ((c7++))
  elif(( $r==8 ))
    then
      ((c8++))
  else
    ((c9++))
  fi
done
# echo $len
echo "0 =" $c0
echo "1 =" $c1
echo "2 =" $c2
echo "3 =" $c3
echo "4 =" $c4
echo "5 =" $c5
echo "6 =" $c6
echo "7 =" $c7
echo "8 =" $c6
echo "9 =" $c7