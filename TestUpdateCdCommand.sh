#! /bin/sh
#cd 等一些命令是一般内建命令 可以被覆盖
cd (){
	#会死循环
	#cd "$@"
	command cd "$@"
	echo 当前目录$PWD
	
}
echo 覆盖cd命令
cd ..