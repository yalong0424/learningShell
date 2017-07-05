#!/bin/bash
#author: jiming.wang
#date: 2017/07/04

#Shell函数定义
####################################################################################
#Shell中用户自定义函数格式为：

#  [function] functionName ()
#  {
#    action
#    [return int]
#  }

#说明：
#  1、function格式中的 [] 均为可选项；
#  2、参数返回，可以显示加：return 返回，如果不加，将以最后一条命令运行结果，作为返回值。
#    Shell 函数返回值只能是整数(0-255)，一般用来表示函数执行成功与否，0表示成功，其他值表示失败。 执行return后，其后语句不再执行。
#  3、所有函数均需先定义后使用，这也就意味着一般需要函数定义统一到放脚本开始部分。
#  4、调用Shell函数时，只需要给出函数名即可，不需要加括号。

funcDemo ()
{
	echo "This is my first shell function!"
}

echo "----------start function----------"
funcDemo
echo "----------end function------------"

#Shell函数返回值
funcWithReturn (){
	echo "这个函数会对输入的两个数字进行相加运算..."
    echo "输入第一个数字: "
    read num1
    echo "输入第二个数字: "
    read num2
    echo "两个数字分别为 $num1 和 $num2 !"
	return $(($num1 + $num2))
}

funcWithReturn
echo "输入的两个数字之和为：$?"   #函数返回值在调用该函数后通过 $? 来获得。

#Shell函数删除
#############################################################################################
#  可以使用break语句来中断函数的执行。
#  declare –f 可以显示定义的函数清单
#  declare –F 可以只显示定义的函数名
#  unset –f 可以从Shell内存中删除函数
#  export –f 将函数输出给Shell
##############################################################################################
funcDemo
unset -f funcDemo #使用 unset 命令删除函数，不过要使用 -f 选项
funcDemo  #删除后再次调用该函数，将会报错：  funcDemo: command not found

#Shell函数嵌套
function firstFunc(){
	function secondFunc() {
		function thirdFunc() {
			echo "this is the third function!"
		}
		echo "this is the second function!"
		thirdFunc
	}
	echo "this is the first function!"
	secondFunc
}

firstFunc