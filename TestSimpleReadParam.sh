#! /bin/sh
#����ͨ�Ķ�ȡ��������
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
			#��ͳϰ��--����ѡ��
			--)
				shift
				break
				;;
		esac
		#ɾ��һ�����
		shift
	done;
echo $file
echo $verbose