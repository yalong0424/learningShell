#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

#  continue语句：结束本层本次循环

i=0
while :
do
	echo -n "输入1到5的数字："
	read num
	case $num in
		1|2|3|4|5) echo "你输入的数字为： $num"
		;;
		*) echo "你输入的数字不在1到5之间"
			continue
			echo "游戏结束"
		;;
	esac
	
	let "i++"
	if [ $i -eq 3 ]
	then
		echo "game over!!!"
		break
	fi
done