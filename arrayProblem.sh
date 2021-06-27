#!/bin/bash -x


for (( i=1; i<=10 ; i++ ))
do
	num[i]=$((RANDOM%100 + 99 ))
	sort -n ${num[@]}
done

max=10
count=1

while [ "$count" -le $max ];
do
	array[$count]=$((RANDOM%100 + 100))
	let "count += 1"
done


echo "${array[@]}"

sort=0
lenngth=${#array[@]}



for ((i=1; i<$length; i++))
do
    for((j=i+1; j<$length; j++))
    do
        if [ ${array[i]} -le ${array[j]} ]
        then
            continue
        else
            a=${array[i]}
            array[i]=${array[j]}
            array[j]=$a
        fi
    done
done
echo ${array[@]}
echo "2nd smallest number from array is : " ${array[2]}
echo "2nd largest number number form array is :" ${array[8]}

