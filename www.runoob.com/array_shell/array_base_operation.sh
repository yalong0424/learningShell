#!/bin/bash

source ../paint.sh
source ./array_define.sh

#数组基本操作

# 访问数组元素: 通过数组下标访问数组元素，下标从 0 开始
#格式：
#        ${array_name[index]}
echo "my_array1 first element is: ${my_array1[0]}"
echo "my_array1 second element is: ${my_array1[1]}"
echo "my_array1 third element is: ${my_array1[2]}"
echo "my_array1 fourth element is: ${my_array1[3]}"

paintLine
echo "my_array2 first element is: ${my_array2[0]}"
echo "my_array2 second element is: ${my_array2[1]}"
echo "my_array2 third element is: ${my_array2[2]}"
echo "my_array2 fourth element is: ${my_array2[3]}"

paintLine
echo "my_array3 first element is: ${my_array3[0]}"
echo "my_array3 second element is: ${my_array3[1]}"   #没有定义的数组元素为空值，可以正常访问，不会越界报错
echo "my_array3 third element is: ${my_array3[2]}"
echo "my_array3 fourth element is: ${my_array3[3]}"

# 获取数组所有元素： 使用 @ 或 * 可以获取数组中的所有元素
# 格式：
#        ${array_name[@]}
#        ${array_name[*]}
paintLine
echo "all the elements of my_array1 are: ${my_array1[@]}"
echo "all the elements of my_array1 are: ${my_array1[*]}"

paintLine
echo "all the elements of my_array2 are: ${my_array2[@]}"
echo "all the elements of my_array2 are: ${my_array2[*]}"

paintLine
echo "all the elements of my_array3 are: ${my_array3[@]}"
echo "all the elements of my_array3 are: ${my_array3[*]}"

#获取数组长度： 可以使用 # 获取数组长度，用法与获取字符串长度类似
# 格式：
#        ${#array_name[@]}
#        ${#array_name[*]}
#
#获取数组第n个元素长度：
#        ${#array_name[n]}
paintLine
echo "my_array1 elements count is: ${#my_array1[@]}"
echo "my_array1 elements count is: ${#my_array1[*]}"

paintLine
echo "my_array2 elements count is: ${#my_array2[@]}"
echo "my_array2 elements count is: ${#my_array2[*]}"

paintLine
echo "my_array3 elements count is: ${#my_array3[@]}"  #因my_array3[1]并没有初始化，因此my_array3实际大小为3
echo "my_array3 elements count is: ${#my_array3[*]}"

arr=(1 2 3 4 5)
#数组分片访问
#格式：
#         ${array_name[@]:startIndex:endIndex}
#      或 ${array_name[*]:startIndex:endIndex}
#      注意：[startIndex, endIndex),包括开始下标的值，但不包括结束下标的值。
echo "数组分片访问实例："
echo ${arr[@]:1:4}
echo ${arr[*]:1:4}


#数组删除操作
#格式：
#         清楚数组下标为n的元素：   unset array_name[n]
#         清楚整个数组：            unset array_name
echo "数组删除操作实例："
echo "arr length is: ${#arr}"
unset arr[1]
echo "arr length is: ${#arr} after delete one element!"
unset arr
echo "arr length is: ${#arr} after delete all the elements!"