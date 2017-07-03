#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

source ../paint.sh

#  until循环格式：
#  until condition
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