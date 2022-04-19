#!/bin/bash

str="$1"
reversed_string=""
reversed_string1=""

len=${#str}

a=$(( $len - 1 ))

b=$(($a/2))


for (( i=$len-1; i>=0; i-- ))
do
   reversed_string="$reversed_string${str:$i:1}"
done

echo "$reversed_string"

new=$(echo $reversed_string | tr "a-z" "b-za" | tr "A-Z" "B-ZA" | tr "0-9" "1-90")
echo $new


for (( i=$b; i>=0; i-- ))
do
   reversed_string1="$reversed_string1${str:$i:1}"
done

for (( i=$b+1; i<=len; i++ ))
do
   normal_string="$normal_string${str:$i:1}"
done

echo "$reversed_string1$normal_string"
