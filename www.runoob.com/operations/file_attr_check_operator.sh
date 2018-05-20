#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

#文件测试运算符用于测试Unix/Linux文件的各种属性。文件属性检测描述如下：
#######################################################################################################################
# 操作符	说明	举例
# -b file	检测文件是否是块设备文件，如果是，则返回 true。	                                [ -b $file ] 返回 false。
# -c file	检测文件是否是字符设备文件，如果是，则返回 true。                           	[ -c $file ] 返回 false。
# -d file	检测文件是否是目录，如果是，则返回 true。                                    	[ -d $file ] 返回 false。
# -f file	检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。	    [ -f $file ] 返回 true。
# -g file	检测文件是否设置了 SGID 位，如果是，则返回 true。	                            [ -g $file ] 返回 false。
# -k file	检测文件是否设置了粘着位(Sticky Bit)，如果是，则返回 true。	                    [ -k $file ] 返回 false。
# -p file	检测文件是否是有名管道，如果是，则返回 true。                               	[ -p $file ] 返回 false。
# -u file	检测文件是否设置了 SUID 位，如果是，则返回 true。	                            [ -u $file ] 返回 false。
# -r file	检测文件是否可读，如果是，则返回 true。	                                        [ -r $file ] 返回 true。
# -w file	检测文件是否可写，如果是，则返回 true。	                                        [ -w $file ] 返回 true。
# -x file	检测文件是否可执行，如果是，则返回 true。	                                    [ -x $file ] 返回 true。
# -s file	检测文件是否不为空（文件大小是否大于0），不为空返回 true。	                    [ -s $file ] 返回 true。
# -e file	检测文件（包括目录）是否存在，如果是，则返回 true。	                            [ -e $file ] 返回 true。
#######################################################################################################################

file= "./string_operator.sh" #以当前目录下的string_operator.sh文件为例，它的大小为 2KB，具有 rwx 权限，下面开始检测该文件的各种属性

if [ -r $file ]
then
	echo "文件可读"
else
	echo "文件不可读"
fi

if [ -w $file ]
then
	echo "文件可写"
else
	echo "文件不可写"
fi

if [ -x $file ]
then
	echo "文件可执行"
else
	echo "文件不可执行"
fi

if [ -f $file ]
then
	echo "文件为普通文件"
else
	echo "文件为特殊文件"
fi

if [ -d $file ]
then
	echo "文件为目录"
else
	echo "文件不是目录"
fi

if [ -s $file ]
then
	echo "文件不为空，即文件大小不为0"
else
	echo "文件为空，即文件大小为0"
fi

if [ -e $file ]
then
	echo "文件存在"
else
	echo "文件不存在"
fi