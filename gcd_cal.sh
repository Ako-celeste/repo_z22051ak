#!/bin/bash


#引数の数が２でない場合
if [ $# -ne 2 ]; then
       echo "input 2 argments"
       exit 1
fi

#同じ数字かどうか

NUM1=$1
NUM2=$2


if [ "$NUM1" -eq "$NUM2" ]; then
       echo "two numbers are the same"
       exit 1
fi


#gcd script

        m=$NUM1

if [ "$NUM2" -lt "$m" ]
then

	m=$NUM2
fi


while [ "$m" -ne 0 ]
do
	x=$(expr "$NUM1" % "$m")
	y=$(expr "$NUM2" % "$m")

	
	
if [ "$x" -eq 0 -a "$y" -eq 0 ]
then
	
	echo gcd of "$NUM1" and "$NUM2" is "$m"
             break
	fi
	m=$(expr "$m" - 1)

done

