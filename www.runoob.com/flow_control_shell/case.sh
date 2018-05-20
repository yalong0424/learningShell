#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

#  case语句格式：

#  case 值 in
#    模式1)
#      command1
#      command2
#      ......
#      commandN
#      ;;
#    模式2)
#      command1
#      command2
#      ......
#      commandN
#      ;;
#    ......
#    模式N)
#      command1
#      command2
#      ......
#      commandN
#      ;;
#    *)
#      command1
#      command2
#      ......
#      commandN
#      ;;
#  esac

#  case语句用于匹配一个值与一个模式，如果匹配成功，则执行相匹配的命令。
#  case取值后面必须为单词in，每一模式必须以右括号结束。取值可以为变量或常数。匹配发现取值符合某一模式后，该模式后所有命令开始执行直至 ;; 。
#  取值将检测匹配的每一个模式。一旦模式匹配，则执行完匹配模式相应命令后不再继续其他模式。如果无一匹配模式，使用星号 * 捕获该值，再执行后面的命令。

echo "输入1到4之间的整数："
echo "你输入的数字为："
read num  #read用于从标准输入(键盘)读取输入
case $num in
	1)
		echo "你选择了1"
		;;
	2)
		echo "你选择了2"
		;;
	3)
		echo "你选择了3"
		;;
	4)
		echo "你选择了4"
		;;
	*)
		echo "你输入的数字不在1到4之间"
		;;
esac

#  case 值 in
#    模式1|模式2|模式3)  #多种匹配模式执行相同的命令操作
#      command1
#      command2
#      ......
#      commandN
#      ;;
#    模式4|模式7|模式8|模式10)  #多种匹配模式执行相同的命令操作
#      command1
#      command2
#      ......
#      commandN
#      ;;
#    ......
#    模式N)
#      command1
#      command2
#      ......
#      commandN
#      ;;
#    *)
#      command1
#      command2
#      ......
#      commandN
#      ;;
#  esac

echo "请输入2到5或者6到9之间的整数，[2， 5]原样输出，[6, 9]翻倍输出："
echo "你输入的数字为："
read num
case $num in
	2|3|4|5)
		echo "你输入的数字为： $num"
		;;
	6|7|8|9)
		val=$(($num * 2))
		echo "你输入的数字翻倍后为： $val"
		;;
	*)
		echo "你输入的数字不在2到5或者6到9之间"
		;;
esac

option="${1}"
case ${option} in
	-f)
		File="${2}"
		echo "File name is ${File}"
		;;
	-d)
		Dir="${2}"
		echo "Dir Name is ${Dir}"
		;;
	*)
		echo "basename ${0}: usage: [-f file] | [-d directory]"
		exit 1 #Command to come out of the program with status 1
		;;
esac