#!/bin/bash
x=13
n=3
echo $(($x + $n))   # arthmetic expansion
echo $((x + n))   # arthmetic expansion
echo 

power=$((x ** n))
echo "raised $x to the power of $n is $power"
echo

# syntax  for the conditional operator 
# test-condition? ture-part-expt : false-part-expr

result=$((x > n ? x ** 2 : x ** 3))  # conditional operator 
echo $result
echo 

x=14
echo $((x / 5))  # Q
echo $((x % 5))  # remainder
echo

echo $((x--))  # post decr
echo $((--x))  # pre decr
echo

n=10
((n += 5))  # n = n + 5  short-hand assign
echo $n
echo 

echo $((4 >> 1)) # 100 >> 1 = 10 = 2
echo $((4 << 1)) # 100 << 1  = 1000 = 8
echo 
echo $((5 & 2))
# 101
# 010
#----
# 000 
echo $((4 ^ 2))   # 100 ^ 010 = 110



