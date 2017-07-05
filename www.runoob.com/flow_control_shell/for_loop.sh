#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

source ../paint.sh

#  for循环格式：
#  for var in item1 item2 ...... itemN
#  do
#    command1
#    command2
#    ......
#    commmandN
#  done

#  for循环格式(一行)：
#  for var in item1 item2 ...... itemN; do command1; command2; ......; commmandN; done

#  for循环格式：
#  for (( ; ; ))

#输入当前目录下的所有文件和目录
for file in `ls ./`; do	echo $file; done

paintLine
#遍历列表
for skill in Ada Coffe Action Java; do
	echo "I am good at ${skill}Script!"
done

paintLine
for char in "This is a string"; do echo $char; done

paintLine
array=(1 2 3 4 5 "11" "12" "13" "14" "15" 1.1 1.2 1.3 1.4 1.5)
echo "遍历数组： ${array[@]}"
for item in ${array[@]}
do
	echo $item
done

paintLine
#遍历传递给脚本的参数
echo "传递给脚本的所有参数为： $@"
for arg in $@
do
	echo $arg
done

paintLine
echo "遍历输出command_shell目录下以 .gitignore 开头的所有文件"
path="../command_shell"
for file in $path/.gitignore*
do
	echo $file
done

paintLine
echo "遍历输出command_shell目录下以 .txt 为后缀的所有文件"
for file in $path/*.txt
do
	echo $file
done

#Shell中for循环的几种常用写法

# 第一类：数字型循环
paintLine
#demo1
for ((i=1; i<=10; i++))
do
	echo $(expr $i \* 3 + 1)
done

paintLine
#demo2
for i in $(seq 1 10)
do
	echo $(($i * 3 + 1))
done

paintLine
#demo3
for i in {1..10}
do
	echo `expr $i \* 3 + 1`
done

paintLine
#demo4
awk 'BEGIN{for(i=1; i<=10; i++) print i}'

#第二类： 字符型循环
paintLine
#demo1
for file in `ls`
do
	echo $file is file name\！
done

paintLine
#demo2
for i in $@
do
	echo $i is input char\!
done
paintLine
for i in $*
do
	echo $i is input char\!
done

paintLine
#demo3
for i in 1 2 3 "4" "5" "6" 7.1 8.1 9.1
do
	echo $i
done

paintLine
#demo4
list="root usr data data2"
for val in $list
do
	echo $val
done

#第三类：路经查找
paintLine
#demo1
for file in /proc/*
do 
	echo $file is file path
done

paintLine
#demo2
for file in $(ls *.sh)  #遍历输出当前目录下所有以 .sh 为后缀的文件
do
	echo $file is a shell file
done
