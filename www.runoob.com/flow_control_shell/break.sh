#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

#  break语句：含义同其他语言，跳出本层循环。

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