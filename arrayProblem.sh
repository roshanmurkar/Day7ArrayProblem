#!/bin/bash -x


counter=1
for (( i=1; i<=3; i++ ))
do
	read -p "Enter 3 numbers:- " n
	array[((counter++))]=${x}
done

a=${#array[@]}
echo "$a"
echo "array length is : -" ${#array[@]}

sum=0

for (( i=1; i<=1; i++ ))
do
	x=${array[i]}
	for (( j=2; j<=2; j++ ))
	do
        	y=${array[j]}
		for(( k=3; j<=3; k++ ))
		do
		        z=${array[k]}
			sum=$(($x+$y))
			sum1=$(($sum+$z))
			if [[ $sum1 -eq 0 ]]
			then
				echo "True"
				break
			fi
		done
	done
done
