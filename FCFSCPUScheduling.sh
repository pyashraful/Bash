#!/bin/bash

pro=(1 2 3)
at=(0 3 6)
bt=(5 9 6)
wt=(0)
st=(0)
tat=(0)
for(( i=1; i<${#pro[@]}; i++ ))
do
  st[$i]=$((${st[$i-1]}+${bt[$i-1]}))
  # echo "st = ${st[$i]}"
  wt[$i]=$((${st[$i]}-${at[$i]}))
  # tat[$i]=$((${bt[$i]}+${wt[$i]}))

  if [ ${wt[$i]} -lt 0 ]
  then
    wt[$i]=0
  fi
done

for(( i=0; i<${#pro[@]}; i++ ))
do
  tat[$i]=$((${bt[$i]}+${wt[$i]}))
done

for(( i=0; i<${#pro[@]}; i++ ))
do
  total_tat=$((${total_tat}+${tat[$i]}))
  total_wt=$((${total_wt}+${wt[$i]}))
  ct[$i]=$((${tat[$i]}+${at[$i]}))
done

echo "=============="
echo  Average waiting time =  $(($total_tat/${#pro[@]}))
echo  Average waiting time =  $(($total_wt/${#pro[@]}))

echo "+++++ CT+++++++"
for(( i=0; i<${#pro[@]}; i++ ))
do
  echo ${ct[$i]}
done


echo "+++++ WT+++++++"
for(( i=0; i<${#pro[@]}; i++ ))
do
  echo ${wt[$i]}
done
echo "=======TAT========"
for(( i=0; i<${#pro[@]}; i++ ))
do
  echo ${tat[$i]}
done

# for(( i=1,j=0; i<${#pro[@]},j<${#pro[@]}; i++,j++ ))
# do
#   ct[$j]=$(( ${ct[$i-1]}+${bt[$j]} ))
# done

echo "===================="

for(( i=0; i<${#pro[@]}; i++ ))
do
  echo ${wt[$i]}
done
echo "===================="
for(( i=0; i<${#pro[@]}; i++ ))
do
  echo ${tat[$i]}
done
# p
echo "========CT=========="
for(( i=0; i<${#pro[@]}; i++ ))
do
  echo ${ct[$i]}
done


