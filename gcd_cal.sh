#!/bin/bash


#引数の数が２でない場合
if [ $# -ne 2 ]; then
       echo "input 2 argments" 1>&2
       exit 1
fi

#同じ数字かどうか
if [ $1 -eq $2 ]; then
       echo "two numbers are the same"
       exit 1
fi


#gcd script

        m=$1

if [ $2 -lt $m ]
then
	m=$2
fi


while [ $m -ne 0 ]
do
	x=`expr $1 % $m`
	y=`expr $2 % $m`

	
	
if [ $x -eq 0 -a $y -eq 0 ]
then
	
	echo gcd of $1 and $2 is $m
		break
	fi
	m=`expr $m - 1`

done

