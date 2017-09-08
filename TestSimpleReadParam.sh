#! /bin/sh
#最普通的读取参数方法
file= verbose=
while [ $# -gt 0 ]
	do
		case $1 in
			-f) 
				file=$2 
				shift 
				;;
			-v)
				verbose=true
				;;
			#传统习惯--结束选项
			--)
				shift
				break
				;;
		esac
		#删除一个入参
		shift
	done;
echo $file
echo $verbose