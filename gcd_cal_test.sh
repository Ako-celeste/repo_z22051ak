#!/bin/bash


tmp=/tmp/$$


#test1
 echo "input 2 argments" > $tmp-ans
 ./gcd_cal.sh a > $tmp-result
 diff $tmp-ans $tmp-result || exit 1

 
