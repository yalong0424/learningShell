#!/bin/sh

. ./paint.sh

# Shell中字符串可以使用单引号、双引号，也可以不使用引号。

# 单引号限制：
# 1)、单引号中的任何字符都会原样输出，单引号字符串中的变量是无效的；
# 2)、单引号字符串中不能出现单引号(对单引号使用字义字符也不行)
str='this is a string'
echo ${str}
my_name="jiming.wang"
str='Hello, \nI know you are \"${my_name}\"'
echo -e ${str}

# 双引号优点：
# 1)、双引号内可以使用变量
# 2)、双引号中可以使用转义字符
str="this is a double string"
echo ${str}
your_name="jiming.wang"
str="Hello, \nI know you are \"${your_name}\"!"
echo -e ${str}

paintLine
echo "string operations:"

#拼接字符串
str="jiming.wang"
greeting="hello, "${str}"!"
greeting_1="hello, ${str}!"
echo ${greeting} ${greeting_1}

#获取字符串长度
str="jiming.wang"
echo ${#str}

# 查找子字符串
str="runoob is a great company"
#查找字符b或者m的位置
echo `expr index "${str}" bm` #反引号而不是单引号

# 截取子字符串，注意，字符串左边的第一个字符用 0 表示，字符串右边的第一个字符用 0-1 表示。
var="http://www.aaa.com/123.html"
# 1、#号截取，删除左边字符，保留右边字符
echo ${var#*//}    #其中 var 是变量名，# 号是运算符，*// 表示从左边开始删除第一个 // 号及左边的所有字符,即删除 http://

# 2、##号截取，删除左边字符，保留右边字符
echo ${var##*/}    #其中##*/ 表示从左边开始删除最后（最右边）一个 / 号及左边的所有字符，即删除 http://www.aaa.com/

# 3、%号截取，删除右边字符，保留左边字符
echo ${var%/*}     #其中%/* 表示从右边开始，删除第一个 / 号及右边的字符，即删除 /123.html

# 4、%%号截取，删除右边字符，保留左边字符
echo ${var%%/*}    #其中%%/* 表示从右边开始，删除最后（最左边）一个 / 号及右边的字符，即删除 //www.aaa.com/123.html

# 5、从左边第几个字符开始截取及截取的字符个数
echo ${var:0:5}    #其中0 表示从左边第一个字符开始，5 表示要截取的字符总个数

# 6、从左边第几个字符开始截取一直到结束
echo ${var:7}      #其中7 表示左边第8个字符开始，一直到结束

# 7、从右边第几个字符开始截取以及截取的字符个数
echo ${var:0-8:3}  #其中 0-8 表示右边算起第八个字符开始，3 表示字符的个数

# 8、从右边第几个字符开始截取一直到结束
echo ${var:0-8}    #其中0-8表示从右边第八个字符开始，一直到结束
