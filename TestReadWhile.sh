#! /bin/sh
#IFX重新指定分隔符
while IFX=: read userName telPhone userId
	do
		echo $userName
	#read重定向
	done <csv.data
#第二种
#管道
cat csv.data |
 while IFX=: read userName telPhone userId
	do
		echo $userName
	
	done