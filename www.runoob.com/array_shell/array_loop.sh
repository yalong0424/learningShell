#!/bin/bash

. ./array_define.sh
. ../paint.sh

#遍历数组

#遍历数组元素连续的数组
paintLine
echo "使用for循环遍历数组元素连续的数组my_array1："
for var in ${my_array1[@]}
do
	echo ${var}
done

paintLine
echo "使用for循环以带数组下标的方式遍历数组元素连续的数组my_array2："
for index in "${!my_array2[@]}" #此处不使用双引号也可
do
	printf "%s\t%s\n" "${index}" "${my_array2[${index}]}"
done

paintLine
echo "使用while循环遍历数组元素连续的数组my_array2："
i=0
while [ $i -lt ${#my_array2[@]} ]
do
	echo ${my_array2[$i]}
	let i++
done

paintLine
echo "使用until循环遍历数组元素连续的数组my_array2："
i=0
until [ $i -ge ${#my_array2[@]} ]
do
	echo ${my_array2[$i]}
	let i++
done

#遍历数组元素不连续的数组
paintLine
echo "使用for循环遍历数组元素不连续的数组my_array3："
for var in ${my_array3[@]}
do
	echo $var
done

paintLine
echo "使用for循环以带数组下标的方式遍历数组元素不连续的数组my_array3："
for index in ${!my_array3[@]} #此处使用双引号也可
do
	printf "%s\t%s\n" "${index}" "${my_array3[$index]}"
done

paintLine
echo "使用while循环遍历数组元素不连续的数组my_array3："
echo "注意使用 while 循环遍历数组元素不连续的数组不理想，遍历结果有可能不符合预期。"
i=0
while [ $i -lt ${#my_array3[@]} ]
do
	echo ${my_array3[$i]}
	let i++
done

paintLine
echo "使用until循环遍历数组元素不连续的数组my_array3："
echo "注意使用 until 循环遍历数组元素不连续的数组不理想，遍历结果有可能不符合预期。"
i=0
until [ $i -ge ${#my_array3[@]} ]
do
	echo ${my_array3[$i]}
	let i++
done
