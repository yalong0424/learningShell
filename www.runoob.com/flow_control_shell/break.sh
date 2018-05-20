#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

source ../paint.sh

#  break语句:
#  1、只有break，其后什么都不跟，默认为跳出本次循环
#  2、在嵌套循环中，break命令后面还可以跟一个整数，表示跳出第几层循环，如 break n ，表示跳出第n层循环。

echo "break默认跳出本层循环实例："
while true
do
	echo -n "输入1到5之间的数字"
	read num
	case $num in
		1|2|3|4|5)
			echo "你输入的数字为： $num"
			;;
		*)
			echo "你输入的不是1到5之间的数字！游戏结束!"
			break
			;;
	esac
done

for ((i=0; i <= 5; i++))
do
	echo "----------------------一场新的游戏开始--------------------------"
	while :
	do
		echo -n "输入1到5之间的数字"
		read num
		case $num in
			1|2|3|4|5)
				echo "你输入的数字为： $num"
				;;
			*)
				echo "你输入的不是1到5之间的数字！游戏结束!"
				break
				;;
		esac
	done
	echo "----------------------一场游戏结束--------------------------------"
	if ((i == 3))
	then
		echo "所有游戏结束！！！！！！！！！！！！！！！！！！！！！！！！！！！"
		break
	fi
done

paintLine
echo "break n 实例：在嵌套循环中用于跳出第n层循环"
for i in 1 2 3
do
	for j in 0 5 10
	do
		if test $i -eq 2 -a $j -eq 5  # if [ $i -eq 2 -a $j -eq 5 ]
		then
			break 2
		else
			echo "$i: $j"
		fi
	done
done