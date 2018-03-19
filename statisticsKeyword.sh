#! /bin/sh
#统计出现频率最高的词
source_file="/cygdrive/d/测试数据/keywordlist"
cat $source_file |
	sort |uniq -c |
					sort -k 1,1 -gr -k 2 >keyword.txt