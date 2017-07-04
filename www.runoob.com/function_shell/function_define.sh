#!/bin/bash
#author: jiming.wang
#date: 2017/07/04

#Shell中用户自定义函数格式为：

#  [function] functionName [()]
#  {
#    action
#    [return int]
#  }

#说明：
#  1、function格式中的 [] 均为可选项；
#  2、参数返回，可以显示加：return 返回，如果不加，将以最后一条命令运行结果，作为返回值。 return后跟数值n(0-255)，执行return后，其后语句不再执行。
#  3、所有函数均需先定义后使用，这也就意味着一般需要函数定义统一到放脚本开始部分。

funcDemo ()
{
	echo "This is my first shell function!"
}

echo "----------start function----------"
funcDemo
echo "----------end function------------"

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
