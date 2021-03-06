#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

#Shell中的test命令用于检测某个条件是否成立，它可以进行 数值、字符和文件 三个方面的测试。

#数值测试
###########################
# 参数	说明
# -eq	等于则为真
# -ne	不等于则为真
# -gt	大于则为真
# -ge	大于等于则为真
# -lt	小于则为真
# -le	小于等于则为真
###########################

num1=100
num2=10

if test $num1 -eq $num2
then
	echo "相等"
else
	echo "不相等"
fi

# []可执行基本的算术运算
a=5
b=6
add=$[a + b]
echo "$a + $b = $add"
add1=`expr $a + $b`
echo "$a + $b = $add1"
add2=$(($a + $b))
echo "$a + $b = $add2"

#字符串测试
#########################################
#  参数	        说明
#   =	        等于则为真
#   !=	        不相等则为真
#   -z 字符串	字符串的长度为零则为真
#   -n 字符串	字符串的长度不为零则为真
#########################################

str1="runoob"
str2="  "

if test $str1 = $str2
then
	echo "两个字符串相等"
else
	echo "两个字符串不相等"
fi

if test -z str2
then
	echo "字符串长度为0"
else
	echo "字符串长度不为0"
fi

#文件测试
######################################################
# 参数	      说明
# -e 文件名   如果文件存在则为真
# -r 文件名	  如果文件存在且可读则为真
# -w 文件名	  如果文件存在且可写则为真
# -x 文件名	  如果文件存在且可执行则为真
# -s 文件名	  如果文件存在且至少有一个字符则为真
# -d 文件名	  如果文件存在且为目录则为真
# -f 文件名	  如果文件存在且为普通文件则为真
# -c 文件名	  如果文件存在且为字符型特殊文件则为真
# -b 文件名	  如果文件存在且为块特殊文件则为真
######################################################

file="./echo_test.txt"

if test -e $file -o -e ./printf.sh
then
	echo "至少有一个文件存在"
else
	echo "两个文件都不存在"
fi

#Shell还提供了 与(-a)/或(-o)/非(!) 三个逻辑操作符用于将 测试条件 连接起来
a=10
b=20
if test $a -ge 5 -a $b -le 25
then
	echo "true"
else
	echo "false"
fi