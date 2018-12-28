#! /bin/sh
source_file="/cygdrive/d/测试数.csv"
#sed '1d' $source_file |cut  -d , -f 7,7 | sed  '/"{"/d'| sed  '/"本公司/d' |sort|uniq  >outFile
cat $source_file |cut  -d , -f 1,1 |sort|uniq  >outFile