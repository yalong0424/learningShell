#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

# 原生 bash 不支持简单的数学运算，但是可以通过其他命令来实现，如 awk 和 expr，其中expr最常用。
# expr是一款表达式计算工具，使用它能完成表达式的求值操作。


a=2
b=3
var=`expr $a \* $b`
echo $var

#  使用 expr `` (反引号)对表达式求值需要注意两点：
#  1、表达式和运算符之间一定要有空格，如必须写成2 + 2，而不能写成2+2
#  2、完整的表达式一定要被 ·· 包含，注意是 反引号 而不是 单引号。

var=`expr $a\*$b`  #表达式和运算符之间一定要有空格，否则不能正确求值
echo $var


#  expr 的语法也可以为：  $((待求值表达式))
var=$(($a*$b)) # $((待求职表达式)) ，此语法中表达式和运算符之间可以不需要空格也可以正确求值
echo $var

var=$(($a * $b))
echo $var

#  expr 的语法也可以为： $(expr 待求值表达式)
var=$(expr $a\*$b)
echo $var

var=$(expr $a * $b)
echo $var

var=$(expr $a \* $b)
echo $var