#!/bin/bash

./gcd_cal.sh > /tmp/$$-result

tmp=/tmp/$$

echo "input 2 argments" > $tmp-args
echo "two numbers are the same" > $tmp-same


ERROR_EXIT() {
   echo "$1" >&2
   rm -f $tmp-*
   exit 1
}


#テスト１引数の数をチェック（２個かどうか）
./gcd_cal.sh 2 > $tmp-ans && ERROR_EXIT "error in test1-1"
diff $tmp-ans $tmp-args || ERROR_EXIT "error in test1-2"
 


#テスト２入力した引数が同じ数値でないかどうか
./gcd_cal.sh 2 2 > $tmp-ans && ERROR_EXIT "error in test2-1"
diff $tmp-ans $tmp-same || ERROR_EXIT "error in test2-2"



   
