#! /bin/sh
#测试命令替换
for i in `pwd;ls *sh`
	do
		echo $i;
	done
echo 第二种
for i in $(pwd;ls *sh)
	do
		echo $i;
	done