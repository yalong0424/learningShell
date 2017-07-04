#!/bin/bash
#author: jiming.wang
#date: 2017/07/04

#转义字符
######################################################
#  转义字符   含义
#    \\	      反斜杠
#    \a	      警报，响铃
#    \b	      退格（删除键）
#    \f	      换页(FF)，将当前位置移到下页开头
#    \n	      换行
#    \r	      回车
#    \t	      水平制表符（tab键） 
#    \v	      垂直制表符
######################################################
# 注意： -e 开启转义； -E 禁止转义。

a=10
echo "the value of a is: \n${a}" #默认情况禁止转义，\n原样输出
echo -E "the value of a is:\n${a}"  # -E 选项禁止转义，\n原样输出
echo -e "the value of a is: \n${a}"  # -e 开启转义