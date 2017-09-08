#! /bin/sh
#使用getopts来获取参数
file= verbose=
while getopts f:v opt 
	do
		case $opt in
			#不用-了
			f) file=$OPTARG
			;;
			v) verbose=true
			;;
		esac
			
	done
echo $file
echo $verbose