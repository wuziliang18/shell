#! /bin/sh
#subShell会开启新的进程不会共享状态 区分代码块 查看TestCodeBlock.sh
echo 当前文件夹$PWD;
(cd ..;echo subShell进入文件夹$PWD)
echo 当前文件夹$PWD;