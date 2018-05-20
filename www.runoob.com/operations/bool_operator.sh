#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

#Shell常见布尔运算符，以 a=10, b=20 为例
##########################################################################################################
# 运算符	说明	                                              举例
# !	        非运算，表达式为 true 则返回 false，否则返回 true。	  [ ! false ] 返回 true。
# -o    	或运算，有一个表达式为 true 则返回 true。	          [ $a -lt 20 -o $b -gt 100 ] 返回 true。
# -a	    与运算，两个表达式都为 true 才返回 true。	          [ $a -lt 20 -a $b -gt 100 ] 返回 false。
##########################################################################################################
#优先级： "!" > "-a" > "-o"

a=10
b=20

if [ $a != $b ]
then
	echo "$a != $b: $a 不等于 $b"
else
	echo "$a != $b: $a 等于 $b"
fi

if [ $a -lt 100 -a $b -gt 15 ]
then
	echo "$a -gt 100 -a $b -gt 15: 返回true"
else
	echo "$a -gt 100 -a $b -gt 15: 返回false"
fi

if [ $a -lt 100 -o $b -gt 100 ]
then
	echo "$a -lt 100 -o $b -gt 100: 返回true"
else
	echo "$a -lt 100 -o $b -gt 100: 返回false"
fi

if [ $a -le 5 -o $b -ge 100 ]
then
	echo "$a -le 5 -o $b -ge 100: 返回true"
else
	echo "$a -le 5 -o $b -ge 100: 返回false"
fi