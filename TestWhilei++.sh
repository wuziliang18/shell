#! /bin/sh
#使用i++
i=0;
while [ $i -lt 50 ]
	do
		echo "第"$i"次循环";
		i=$((i+1));
	done