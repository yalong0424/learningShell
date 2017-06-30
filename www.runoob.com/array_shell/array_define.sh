#!/bin/bash

#Base Shell目前只支持一维数组，不支持多维数组

#定义数组

# Shell数组定义时不需要指定数组大小，空格分隔
# 定义方式一：
#格式：
#        array_name=(elem1 elem2 ...... elemN)
my_array1=(1A 1B "1C" '1D')

# 定义方式二：每个元素一行
#格式：
#        array_name=(
#        elem1
#        elem2
#        ......
#        elemN
#        )
my_array2=(
2A
2B
"2C"
'2D'
)

# 定义方式三：使用数组下标单独定义数组各个分量，数组下标可以不连续，下标从0开始
# 格式：
#        array_name[0]=elem1
#        array_name[1]=elem2
#        array_name[5]=elem5
#        ......
#        array_name[N]=elemN
my_array3[0]=3A
my_array3[2]="3C"  #没有定义的数组元素为空值，可以正常访问，不会越界报错
my_array3[3]='3D'