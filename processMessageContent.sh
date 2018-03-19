#! /bin/sh
source_file="/cygdrive/d/测试数据/outFile.data"
sed '/^$/d'  $source_file |tr -d  '"' | sed '/./{s/^/messageList.add("&/;s/$/&");/}' |sort    >outPut