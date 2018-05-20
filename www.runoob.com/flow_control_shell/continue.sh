#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

. ../paint.sh

#  continue语句：
#  用法一：只有continue语句，其后什么也不加，默认为结束本层本次循环
#  用法二：在嵌套循环中，continue命令后面还可以跟一个整数，表示结束第几层的本层本次循环，如 break n ，表示跳出第n层结束本层本次循环。

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

paintLine
nums="1 2 3 4 5 6 7 8 9"
for num in $nums
do
	Q=`expr $num % 2` # Q=$(($num%2)) Q=$(expr $num % 2)
	if test $Q -eq 0 # if [ $Q -eq 0 ]
	then
		echo "$num is an even number!"
		continue
	fi
	echo "$num is an odd number!"
done

paintLine
for i in 1 2 3 4 5
do
	for j in 1 5 10
	do
		if test $i -eq 3 -a $j -eq 5 # if [ $i -eq 3 -a $j -eq 5 ]
		then
			continue
		fi
		echo "$i:  $j"
	done
	echo "**********测试完第 $i 轮******************"
done

paintLine
echo "continue n：结束第n层本层本次循环实例："
for i in 1 2 3 4 5
do
	for j in 1 5 10
	do
		if test $i -eq 3 -a $j -eq 5 # if [ $i -eq 3 -a $j -eq 5 ]
		then
			continue 2
		fi
		echo "$i:  $j"
	done
	echo "**********测试完第 $i 轮******************"
done