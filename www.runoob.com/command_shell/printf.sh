#!/bin/bash
#author: jiming.wang
#url: www.runoob.com

#printf和echo都为输出命令，printf命令模仿C程序库里的printf()函数，使用printf的脚本比使用echo脚本的移植性好。
#printf使用格式化控制字符串，可以控制字符串的宽度、左右对齐方式、小数显示位数等
#注意：  默认的printf不会像echo一样自动添加换行符，我们可以手动添加 \n 实现换行。

#printf格式：
#  printf format-srting [argument1 argument2 ......]
#  其中， format-string为格式控制字符串， argument1、argument2等为参数列表

# 序列	    说明
# \a    	警告字符，通常为ASCII的BEL字符
# \b		后退
# \c		抑制（不显示）输出结果中任何结尾的换行字符（只在%b格式指示符控制下的参数字符串中有效），
#             而且，任何留在参数里的字符、任何接下来的参数以及任何留在格式字符串中的字符，都被忽略
# \f		换页（formfeed）
# \n		换行
# \r		回车（Carriage return）
# \t		水平制表符
# \v		垂直制表符
# \\		一个字面上的反斜杠字符
# \ddd		表示1到3位数八进制值的字符。仅在格式字符串中有效
# \0ddd		表示1到3位的八进制值字符


#%s %c %d %f都是格式替代符
#%-10s 指一个宽度为10个字符（-表示左对齐，没有则表示右对齐），任何字符都会被显示在10个字符宽的字符内，如果不足则自动以空格填充，超过也会将内容全部显示出来。
#%-4.2f 指格式化为小数，其中.2指保留2位小数。
printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876

printf "%d %s\n" 1 "abc" #format-srting为双引号
printf '%d %s\n' 1 "abc" #format-srting，单引号与双引号效果一致
printf %s abc #format-srting,没有引号也可以输出，只支持一个参数，且不换行

printf %s abc efg # 格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用，不换行
printf "%s\n" abc efg
printf "%s %s %s\n" a b c d e f g h i j # 格式指定的参数个数较少，则多出的参数仍然会按照该格式输出，format-string 被重用

printf "%s and %d\n"  #如果没有arguments，则%s用 NULL代替， %d 用 0 代替