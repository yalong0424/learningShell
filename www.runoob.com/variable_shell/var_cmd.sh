#!/bin/bash
#author: jiming.wang
#date: 2017/07/04

. ../paint.sh

#  命令替换：使用命令时使用的是 反引号 而不是 单引号。
#  命令替换是指Shell可以先执行命令，将输出结果暂时保存，在适当的地方输出。

date=`date`
echo "Date is ${date}"

paintLine
users=`who | wc -l`
echo "Logged in user are ${users}"

paintLine
up=`date; uptime`
echo "Uptime is ${up}"

paintLine
for file in `ls`
do
	echo ${file}
done