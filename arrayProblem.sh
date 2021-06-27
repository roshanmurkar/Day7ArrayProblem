#!/bin/bash -x

for (( i=1; i<=10 ; i++ ))
do
	num[i]=$((RANDOM%100 + 99 ))
	sort -n ${num[@]}
done

