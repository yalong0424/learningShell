#!/bin/bash
#author: jiming.wang
#date: 2017/07/05

. ../paint.sh

#函数的变量作用域

#  默认情况下，变量具有全局作用域，如果想把变量设置为局部作用域，可以在变量前加入 local 关键字。
#  使用局部作用域，则函数执行完毕后，会自动释放变量所占用的内存空间，从而减少系统资源的消耗，在运行大型程序时，定义和使用局部变量尤为重要。

name="小明"

testGloablVarInFunc() {
	echo "global variable name is: ${name}" #在函数内调用在函数外部定义的全局变量
	
	age=20  #在函数内定义一个新的全局变量
	echo "global variable age is: ${age}"
	
	name="小红" #在函数内修改 在函数外 调用的全局变量
	echo "global variable name is: ${name}"
}

testGloablVarInFunc

paintLine
echo "global variable name is: ${name}" #调用全局变量，该全局变量已在函数内修改

echo "global variable age is: ${age}" #调用全局变量，该全局变量在函数内定义

testLocalVarInFunc() {
	echo "global variable name is: ${name}" #在函数内调用在函数外定义的全局变量
	
	local grade="grade one"  #在函数内定义局部变量，该局部变量作用域为该函数内部，一旦函数执行完毕后，该局部变量占用的内存空间会被自动释放。
	echo "local variable grade is: ${grade}"
	
	local name="小张" #在函数内定义一个与外部全局变量同名的局部变量，在该局部变量作用域内，该局部变量会覆盖/隐藏外部的全局变量
	echo "local variable name is: ${name}"
}

paintLine
testLocalVarInFunc

paintLine
echo "global variable name is: ${name}" #该全局变量的值并没有修改

echo "local variable grade is: ${grade}" #输出为空值，因为该变量为函数内部定义的局部变量，离开函数作用域，该局部变量自动释放，即不可以在函数外部调用函数内部定义的局部变量。
