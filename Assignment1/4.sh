#!/bin/bash

read -a nos
arraysize=${#nos[@]}


for (( i = 0; i <= $arraysize ; i++ ))
do
   for (( j = $i; j <= $arraysize; j++ ))
   do
      if [ ${nos[$i]} -gt ${nos[$j]}  ]; then
       t=${nos[$i]}
       nos[$i]=${nos[$j]}
       nos[$j]=$t
      fi
   done
done

echo -e "\nSorted Numbers in Ascending Order:"
for (( i=0; i <= $arraysize; i++ )) 
do
  echo ${nos[$i]}
done