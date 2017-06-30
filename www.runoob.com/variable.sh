#!/bin/bash

#定义变量时，变量名不加美元符号($，PHP语言中变量需要)
#注意，变量名和等号之间不能有空格，
#命名规范：字母数字下划线，字母打头
your_name33="runoob.com"
#定义变量不加 $ 符号，使用变量需加 $ ，而花括号可选，加花括号是为了帮助Shell解释器识别变量的边界
echo $your_name33
echo ${your_name33}
#为了正确识别变量边界，以下这种情况下花括号必不可少，否则结果就不是期望的样子了。
#为所有变量加花括号是一个好的习惯
for var in Ada Coffee Action Java; do
	echo "I am good at ${var}Scripts"
done

my_name="tom"
echo ${my_name}
#已定义的变量，可以被重新定义
my_name="yalong"
echo ${my_name}

#只读变量，使用 readonly 命令可以将变量定义为只读变量，只读变量的值不能被修改。
readonly my_name
#my_name="xiaoming" #尝试修改只读变量的值，报错

#删除变量，使用 unset 命令可删除变量
unset your_name33
#变量被删除后不能再被使用，unset命令不能删除只读变量。
echo ${your_name33} #使用已删除的变量不会有任何输出

#变量类型
#运行shell时，会同时存在三种变量：
#1) 局部变量 局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
#2) 环境变量 所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
#3) shell变量 shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行