#!/bin/bash


n=1
while [ $n -le 5 ];
do
	echo "Number : $n"
	n=$((n+1))
done



number=0
while [[ $number -le 20 ]];
do
	echo " This is $number"
	number=$((number+2))
done
