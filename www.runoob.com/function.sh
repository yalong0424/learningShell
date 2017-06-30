#!/bin/bash

#author: jiming.wang
#url: www.runoob.com

#处理shell参数的几个特殊字符如下：
###############################################################
# $#      传递给脚本或函数的参数个数
# $@ $*   以一个字符串方式显示所有传递给脚本或者函数的参数列表
# $?      获取函数返回值，即显示脚本或函数最后命令的退出状态。0表示满意错误，其他任何值表示有错误。
# $$      脚本运行的当前进程ID号
# $!      后台运行的最后一个进程的ID号
# $-      显示Shell使用的当前选项，与set命令功能相同
###############################################################

#所有函数均需先定义后使用，这就意味着一般需将函数定义放在脚本开始部分，直至shell解释器首次发现它时才可以使用。
demoFunc()
{
	echo "This is my first shell function!"
}

funcWithReturn()
{
	echo "This function will add two input numbers..."
	echo "please input the first number: "
	read num1
	echo "please input the second number: "
	read num2
	echo "the two numbers are ${num1} and ${num2}"
	return $(($num1 + ${num2}))
}

funcWithParams()
{
	#在shell中，调用函数时可向其传递参数，在函数体内部，可通过 $n 的形式获取参数的值。例如
	#例如， $1 表示第一个参数， $2 表示第二个参数，以此类推。
	echo "the first argument is: $1!"
	echo "the second argument is: $2!"
	#注意，$10 不能获取第十个参数，获取第十个参数应使用 ${10}，即需要使用 {} 来界定变量边界。
	echo "the ten argument is: $10!"
	echo "the ten argument is: ${10}!"
	echo "the elevn argument is: ${11}!"
	echo "the total arguments count is: $#!"
	echo "output all the arguments as a string: $*!"
}

funcPaintLine()
{
	echo "----------------------------------------------------------------------------------"
}

echo "-----start function-----"
#调用函数仅使用函数名即可
demoFunc
echo "-----end function-----"

funcPaintLine
funcWithReturn
#函数返回值在调用该函数后通过 $? 来获取
echo "the funcWithReturn result is: $?!"

funcPaintLine
funcWithParams 1 2 3 4 5 6 7 8 9 34 73
