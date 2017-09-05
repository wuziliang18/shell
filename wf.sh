#! /bin/sh
#统计出现频率最高的词
cat english.txt |
	tr -cs A-Za-z\' '\n' |
		tr A-Z a-z |
			sort |
				uniq -c |
					sort -k 1,1 -gr -k 2 |
						sed -n '1,25p'