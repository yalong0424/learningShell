#!/bin/bash
#author: jiming.wang
#date: 21017/07/04

#Shell文件包含：
#  Shell 脚本中也可以包含其他文件脚本文件，这样就可以很方便的封装一些公用的代码作为一个独立的文件，以供其他脚本调用。
#  Shell文件包含的语法格式如下：
#  格式一：
#    . fileName   #注意点好(.)和文件名中间有一个空格
#  格式二：
#    source fileName
#  注意：被包含的文件 fileName 不需要可执行权限

. ../paint.sh             #使用 . fileName 格式进行文件包含
source ./test_include.sh  #使用 source fileName 格式进行文件包含

paintLine
echo "菜鸟教程官网地址： $url"
paintLine