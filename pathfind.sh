#! /bin/sh
#在指定路径下查找文件或者模式
#指定路径为环境变量!!!
#语法 pathfind [--all] [--?] [--help] envvar patterns
#使用--all选项 查询全部
#防止攻击 把IFS还原为默认值
IFS=' 
	'

error(){
	echo "$@" 1>&2
	usage_and_exit
}
usage_and_exit(){
	usage
	exit 0
}
usage(){
	echo "使用方法:$PROGRAM [--all] [--?] [--help] envvar patterns"
}
#是否查询全部文件
all=no
#环境变量
envvar=

#使用命令替换赋值
PROGRAM=`basename $0`
#读取参数
while [ $# -gt 0 ]
	do
		case $1 in
            --all |--al |-all|-al |-a) 
                all=yew
                ;;
            --help|--hel|--he|--h|'--?'|-hlep|-hle|-hl|-h|'-?')
                usage_and_exit
                ;;
            -*)
                error 未知的选项$1
                ;;
			#不在处理参数
			*)
				break
				;;
        esac
        #删除一个入参
        shift
	done
#环境变量是处理后的第一个参数
envvar=$1;
shift;
#使用命令替换赋值
#'$'{"$envvar"'}' 引号防止继续展开 实际可以去掉括号如下边注释
#searchPath=`eval echo '$'"$envvar"`
searchPath=`eval echo '${'"$envvar"'}' |tr : ' '` 
echo 指定的查找目录:$searchPath
if [ -z "$envvar" ]
then 
	error 没有输入路径
elif [ -z "$searchPath" ]
then 
    error 空目录
elif [ $# -eq 0 ]
then 
	exit 0
fi
echo 开始查找...
#第一层循环 对输入的所有参数(默认是正则)进行循环查找
for pattern in "$@"
do
	#第二层对指定的目录查找
	for dir in $searchPath
	do
		#第三层对文件开始匹配
		for file in $dir/$pattern
		do
			if [ -f $file ]
			then
				echo 找到文件$file
				#test "$all" = "no" && break 2
				[ $all = "no" ]  && break 2
			fi
		done
	done
	
done

