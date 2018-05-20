#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

. ../paint.sh

#Shell字符串运算符，以 a="abc" ， b="efg" 为例
#######################################################################################
# 运算符	说明                                        	举例
# =	        检测两个字符串是否相等，相等返回 true。	      [ $a = $b ] 返回 false。
# !=	    检测两个字符串是否不相等，不相等返回 true。	  [ $a != $b ] 返回 true。
# -z	    检测字符串长度是否为0，为0返回 true。	      [ -z $a ] 返回 false。
# -n	    检测字符串长度是否不为0，不为0返回 true。	  [ -n $a ] 返回 true。
# str	    检测字符串是否不为空，不为空返回 true。	      [ $a ] 返回 true。
#######################################################################################

a="abc"
b="efg"

if [ $a = $b ] #判断两个字符串是否相等
then
	echo "$a = $b: $a 等于 $b"
else
	echo "$a = $b: $a 不等于 $b"
fi

if [ $a != $b ] #判断两个字符串是否不等
then
	echo "$a != $b: $a 不等于 $b"
else
	echo "$a != $b: $a 等于 $b"
fi

if [ -z $a ] #判断字符串长度是否为0
then
	echo "-z $a: 字符串$a长度为0！"
else
	echo "-z $a: 字符串$a长度不为0！"
fi

if [ -n $a ] #判断字符串长度是否不为0
then 
	echo "-n $a: 字符串$a长度不为0！"
else
	echo "-n $a: 字符串$a长度为0！"
fi

if [ $a ] #判断字符串是否为空
then
	echo "$a: 字符串$a不为空！"
else
	echo "$a: 字符串$a为空！"
fi

paintLine
c=" "
d=""
if [ $c == $d ]
then
	echo "$c = $d: $c 等于 $d"
else
	echo "$c = $d: $c 不等于 $d"
fi

if [ $c != $d ]
then
	echo "$c != $d: $c 不等于 $d"
else
	echo "$c ！= $d: $c 等于 $d"
fi

if [ -z $c ]
then
	echo "字符串$c长度为0！"
else
	echo "字符串$c长度不为0！"
fi

if [ -z $d ]
then
	echo "字符串$c长度为0！"
else
	echo "字符串$c长度不为0！"
fi

if [ -n $c ]
then
	echo "字符串$c长度不为0！"
else
	echo "字符串$c长度为0！"
fi

if [ -n $d ]
then
	echo "字符串$d长度不为0！"
else
	echo "字符串$d长度为0！"
fi

if [ $c ]
then
	echo "字符串$c不为空！"
else
	echo "字符串$c为空！"
fi

if [ $d ]
then
	echo "字符串$d不为空！"
else
	echo "字符串$d为空！"
fi