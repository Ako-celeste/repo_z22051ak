#!/bin/bash


tmp=/tmp/$$


#test1
echo "input 2 argments" > $tmp-args
./gcd_cal.sh 24 > $tmp-result
diff /$tmp-args $tmp-result && echo "テスト1正常入力" || exit 1

#test2
echo "two numbers are the same" > $tmp-same
./gcd_cal.sh 24 24 > $tmp-result
diff $tmp-same $tmp-result && echo "テスト2正常入力" || exit 1


rm -f /$tmp-*

   
