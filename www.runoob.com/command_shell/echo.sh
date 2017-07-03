#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

#Shell的echo命令用于字符串的输出，也可以使用echo命令实现更为复杂的输出格式控制。
#echo命令格式：
#    echo  string
	
#echo命令可以用于以下方面：
#  1、显示普通字符串
#  2、显示转义字符
#  3、显示变量
#  4、显示换行
#  5、显示不换行
#  6、显示结果重定向至文件
#  7、原样输出字符串，不进行转义或取变量(用单引号)
#  8、显示命令执行结果

echo "It is a test" #输出普通字符串

echo "\"It is a test\"" #输出转义字符

read value #从标准输入读取一行，并赋值给value变量
echo "$value  It is a test" #输出变量

#显示换行
echo "OK! \nIt is a test"
echo -e "OK! \nIt is a test" # -e 开启转义

#显示不换行
echo -e "OK! \c" # -e 开始转义， -c不换行
echo "It is a test"

echo "It is a test" > echo_test.txt #显示结果重定向到文件

value="hello world"
echo '$value \"' #使用单引号时，原样输出字符串，不进行转义或取变量

#显示命令输出结果，注意，是 反引号 不是 单引号
echo `date`
echo `ls`
echo `ls -l`