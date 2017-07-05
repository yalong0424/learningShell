#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

source ../paint.sh

#condition 与 方括号[] 之间一定要有空格，否则会有语法错误。

#  until循环格式：
#  until [ condition ]
#  do
#    command1
#    command2
#    ......
#    commandN
#  done

#注意： until循环是先执行一次循环体，再测试循环条件，因此，循环体至少执行一次。

#遍历数组
array=(1 2 3 4 5 "11" "12" "13" "14" "15" 1.1 1.2 1.3 1.4 1.5)
echo "数组元素为： ${array[@]}"
i=0
until [ $i -ge ${#array[@]} ]
do
	echo $i ": " ${array[$i]}
	let "i++"
done

paintLine
i=0
until (($i >= ${#array[@]}))
do
	echo $i ": " ${array[$i]}
	let "i++"
done

paintLine
#使用until命令输出0-9之间的数字
i=0
until [ ! $i -lt 10 ]  # ！非
do
	echo $i
	i=`expr $i + 1`
done