#! /bin/sh
#ʹ��getopts����ȡ����
file= verbose=
while getopts f:v opt 
	do
		case $opt in
			#����-��
			f) file=$OPTARG
			;;
			v) verbose=true
			;;
		esac
			
	done
echo $file
echo $verbose