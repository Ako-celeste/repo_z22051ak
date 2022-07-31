#!/bin/bash


./gcd_cal.sh a b > /tmp/$$-result


#引数の数をチェック（２個かどうか）
if [ $#!=1 ]; then
    echo "args count error!" > /tmp/$$-ans
　　exit 1
else
    echo "OK"
fi

  
#入力した引数が同じ数値でないかどうか
if [ $1 -eq $2 ]; then
     echo "数字が重複しています。違う数値を入れて下さい" > /tmp/$$-ans
　 exit 1
fi

