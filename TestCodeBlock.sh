#! /bin/sh
#测试代码块 会共享状态可以比较TestSubShell
echo 当前文件夹$PWD;
{
cd ..;echo subShell进入文件夹$PWD
}
echo 当前文件夹$PWD;