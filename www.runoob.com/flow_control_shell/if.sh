#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

#Shell的流程控制语句不能为空，如果if中的else分支没有执行语句，则不要写else分支

#  if格式:
#  if condition
#  then
#    command1
#    command2
#    ......
#    commandN
#  fi

#当 if语句较少时，也可以写成一行(适用于终端命令提示符),如
if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true"; fi

#  if-else格式：
#  if condition
#  then
#    command1
#    command2
#    ......
#    commandN
#  else
#    command1
#    command2
#    ......
#    commandN
#  fi

#  if-elif-if格式：
#  if condition1
#  then
#    command1
#    ......
#    commandN
#  elif condition2
#  then
#    command1
#    ......
#    commandN
#  elif ......
#  then
#    command1
#    ......
#    commandN
#  elif conditionN
#  then
#    command1
#    ......
#    commandN
#  else
#    command1
#    ......
#    commandN
#  fi

a=10
b=20

if [ $a -eq $b ]
then
	echo "$a 等于 $b"
elif [ $a -gt $b ]
then
	echo "$a 大于 $b"
elif [ $a -lt $b ]
then
	echo "$a 小于 $b"
else
	echo "没有符号的条件"
fi

# if 语句经常与 test 命令结合使用，如
num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
	echo "$num1 等于 $num2"
else
	echo "$num1 不等于 $num2"
fi