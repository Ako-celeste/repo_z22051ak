#!/bin/bash


#２つの数字を入力
echo gcdを算出します。２つの数字を入力し、間にスペースを入れてください

#読み込む
read a b

        m=$a

#bがmより小さい値かチェックする
#イエスの場合mに新しい値を代入する
if [ " $b" -lt "$m" ]
then
	m=$b
fi

#ループ処理で最大公約数gcdをチェックする
while [ "$m" -ne " 0" ]
do
	x=`expr $a % $m`
	y=`expr $b % $m`

	#もしxとyが両方とも0なら処理を終える
	#実行し最大公約数gcdを算出する
	if [ $x -eq 0 -a $y -eq 0 ]
	then

		#2つの数字の最大公約数を算出する
		echo gcd of $a and $b is $m
		break
	fi
	m=`expr $m - 1`

done

