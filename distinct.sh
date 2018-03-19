#! /bin/sh
#去重
source_file="/cygdrive/d/测试数据/品名.txt"
result_file=$source_file".uniq"
cat $source_file |
	sort |uniq >$result_file