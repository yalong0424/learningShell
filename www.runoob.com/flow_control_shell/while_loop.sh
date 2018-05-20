#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

source ../paint.sh

#condition 与 方括号[] 之间一定要有空格，否则会有语法错误。

#  while循环格式：
#  while [ condition ]
#  do
#    command1
#    command2
#    ......
#    commandN
#  done

#注意： while循环先测试循环条件，当条件成立时才执行循环体（while循环体在第一次条件测试就不成立时，一次都不会执行）

paintLine
i=1
while (($i <= 5)) #遍历1到5
do
	echo $i
	let "i++"  #bash let命令用于执行一个或多少表达式，变量计算中不需要加上 $ 来表示变量
done

paintLine
#遍历数组
array=(1 2 3 4 5 "11" "12" "13" "14" "15" 1.1 1.2 1.3 1.4 1.5)
i=0
while [ $i -lt ${#array[@]} ]
do
	echo ${array[i]}
	i=`expr $i + 1`
done

paintLine
echo "按下 <CTRL-D>退出"
echo -n "输入你最喜欢的电影名："
while read film  #用于读取键盘信息
do
	echo "yes, $film 是一部好电影"
done