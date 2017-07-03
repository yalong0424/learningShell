#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

source ../paint.sh

#  使用 while 实现无限循环：
#  while :
#  do
#    command
#  done

#  使用 while 实现无限循环：
#  while true
#  do
#    command
#  done

#  使用 for 实现无限循环：
#  for (( ; ; ))
#  do
#    command
#  done

echo "测试while :实现无限循环"
while :
do
	echo -n "输入1到5之间的数字："
	read num
	case $num in
		1|2|3|4|5)	echo "你输入的数字为： $num";;
		*)	echo "你输入的数字不在1到5之间！游戏结束！"
			break
			;;
	esac
done

paintLine
echo "测试while true实现无限循环"
while true
do
	echo -n "输入1到5之间的数字："
	read num
	case $num in
		1|2|3|4|5)	echo "你输入的数字为： $num";;
		*)	echo "你输入的数字不在1到5之间！游戏结束！"
			break
			;;
	esac
done 