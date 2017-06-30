#!/bin/bash
. ./array_define.sh

# 数组作为函数参数

#由于Shell对数组的支持并不是很好，目前除了使用全局变量外，并没有完美的解决方案
#以下为一个变通的思路，具体为：
#可以将数组转换为字符串传递给函数，在函数中，通过读取字符串并且重新将其转换为数组来达到目的。
print_array()
{
	local arr=(`echo $1 | cut -d " " --output-delimiter=" " -f 1-`)
	local arr_len=${#arr[@]}
	for ((i=0; i < $arr_len; i++)) #此处必须为两个圆括号，具体原因待查？？？
	do
		elem=${arr[$i]}
		echo "$i: $elem"
	done
}


array=(a b c)
print_array "$(echo ${array[@]})"
