#! /bin/sh
#awk简单示例
#把输入的分隔符修改为__输出 $1=$1 是为了让输出分隔符生效如果没有任何变化会以默认输出分隔符
echo 把输入的分隔符修改为__
awk 'BEGIN{FS=":";OFS="__"} {$1=$1;print }' csv.data
#去重
echo 去重
sort sort.data| awk 'LAST !=$0 {print } {LAST=$0}'
#取<key>001</key>
awk '/<key>/,/<\/key>/' EmoticonInfo*