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


read -p "Enter a number to get the prime factors:- " n

if [ $n -lt 1 ]
then
	echo "num is less than 1 "
	exit 1
fi



count=0
flag=0

for (( i=2; i<$n ; ))
do

	if [ `expr $n % $i` -eq 0 ]
	then
		factor=$i

  		for ((j=2;j<=`expr $factor / 2`;))
		do
      			flag=0
      			if [ `expr $factor % $j` -eq 0 ]
			then
      				flag=1
      				break
      			fi
      			j=`expr $j + 1`
  		done
  		if [ $flag -eq 0 ]
		then
  			echo "[ $factor ]"
  			count=1
  		fi
  	fi
  	i=`expr $i + 1`
done
if [ $count -eq 0 ]
then
  	echo "no prime factors found except 1 and" $n
fi

