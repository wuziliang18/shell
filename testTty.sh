#!/bin/sh
printf "请输入密码"
#关闭自动打印输入字符
stty -echo
read pass < /dev/tty
printf "密码是%s" $pass
stty echo
