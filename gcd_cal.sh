#!/bin/bash


#２つの数字を入力
echo gcdを算出します。２つの数字を入力し、間にスペースを入れてください

read a b

        m=$a

#bがmより小さい値かチェックする
#イエスの場合mに新しい値を代入する
if [ $b -lt $m ]
then
	m=$b
fi

while [[ $m -ne 0 ]]
do
	x=`expr $a % $m`
	y=`expr $b % $m`

	
	#実行し最大公約数gcdを算出する
	if [ $x -eq 0 -a $y -eq 0 ]
	then

		#2つの数字の最大公約数を算出する
		echo gcd of $a and $b is $m
		break
	fi
	m=`expr $m - 1`

done

