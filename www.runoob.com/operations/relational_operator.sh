#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

#Shell中关系运算符目前只支持数字，不支持字符串，除非字符串的值是数字。
#Shell中常见关系运算符， 以 a=10, b=20 为例：
###############################################################################################
# 运算符	说明	                                                   举例
# -eq   	检测两个数是否相等，相等返回 true。	                    [ $a -eq $b ] 返回 false。
# -ne	    检测两个数是否不相等，不相等返回 true。	                [ $a -ne $b ] 返回 true。
# -gt	    检测左边的数是否大于右边的，如果是，则返回 true。	    [ $a -gt $b ] 返回 false。
# -lt	    检测左边的数是否小于右边的，如果是，则返回 true。	    [ $a -lt $b ] 返回 true。
# -ge	    检测左边的数是否大于等于右边的，如果是，则返回 true。	[ $a -ge $b ] 返回 false。
# -le	    检测左边的数是否小于等于右边的，如果是，则返回 true。	[ $a -le $b ] 返回 true。
###############################################################################################
#注意：
#  1、条件表达式要放在 方括号[] 之内，并且一定要有空格。 如 [$a==$b] 是错误的，必须写成 [ $a==$b ]

a=10
b=20
c=20

if [ $a -eq $b ]
then
	echo "$a -eq $b: $a 等于 $b"
else
	echo "$a -eq $b: $a 不等于 $b"
fi

if [ $b -ne $c ]
then
	echo "$b -ne $c: $b 不等于 $c"
else
	echo "$b -ne $c: $b 等于 $c"
fi

if [ $a -gt $b ]
then
	echo "$a -gt $b: $a 大于 $b"
else
	echo "$a -gt $b: $a 不大于 $b"
fi

if [ $a -ge $b ]
then
	echo "$a -ge $b: $a 大于等于 $b"
else
	echo "$a -ge $b: $a 小于 $b"
fi

if [ $a -lt $b ]
then
	echo "$a -lt $b: $a 小于 $b"
else
	echo "$a -lt $b: $a 不小于 $b"
fi

if [ $a -le $b ]
then
	echo "$a -le $b: $a 小于等于 $b"
else
	echo "$a -le $b: $a 大于 $b"
fi