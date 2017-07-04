#!/bin/bash
#author: jiming.wang
#date: 2017/07/04

. ../paint.sh

#变量替换：可以根据变量的状态（是否为空、是否定义等）来改变它的值

#变量替换形式：
#########################################################################################################################################
#    形式	说明
#  ${var}	         变量本来的值
#  ${var:-word}	     如果变量 var 为空或已被删除(unset)，那么返回 word，但不改变 var 的值。
#  ${var:=word}	     如果变量 var 为空或已被删除(unset)，那么返回 word，并将 var 的值设置为 word。
#  ${var:?message}	 如果变量 var 为空或已被删除(unset)，那么将消息 message 送到标准错误输出，可以用来检测变量 var 是否可以被正常赋值。
#                        若此替换出现在Shell脚本中，那么脚本将停止运行。
#  ${var:+word}	     如果变量 var 被定义，那么返回 word，但不改变 var 的值。如果var为空或已被删除(unset)，则不会返回任何值。
#########################################################################################################################################

var="Hello-one"
echo ${var:-"var is not set"}
echo "1-value of var is ${var}"

unset var
echo ${var:-"var is not set"}
echo "1.1-value of var is ${var}"

paintLine
var="Hello-two"
echo ${var:="var is not set"}
echo "2-value of var is ${var}"

unset var
echo ${var:="var is not set"}
echo "2.1-value of var is ${var}"

paintLine
var="Hello-three"
echo ${var:+"This is default value"}
echo "3-value of var is ${var}"

unset var
echo ${var:+"This is default value"}
echo "3.1-value of var is ${var}"

paintLine
var="Hello-four"
echo ${var:?"Print this message"}
echo "4-value of var is ${var}"

unset var
echo ${var:?"Print this message"}
echo "4.1-value of var is ${var}"