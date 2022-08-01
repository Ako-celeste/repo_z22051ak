#!/bin/bash


tmp=/tmp/$$


ERROR_EXIT() {
   echo "$1" >&2
   rm -f $tmp-*
   exit 1
}


./gcd_cal.sh > $tmp-result
echo "input 2 argments" > $tmp-args
echo "two numbers are the same" > $tmp-same
diff $tmp-args $tmp-result || ERROR_EXIT "error in test1"
diff $tmp-same $tmp-result || ERROR_EXIT "error in test2"



rm -f $tmp-*
   
