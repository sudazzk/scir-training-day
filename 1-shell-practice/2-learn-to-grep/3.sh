#差集 (3a.txt-3b.txt)
grep -F -v -f 3b.dat 3a.dat | sort
# -F 将查找模式解释成单纯的字符串
# -v 只显示不包含匹配字符串的文本行
# -f 从文件中获取模式，每行一个。空文件不含模式，不做匹配


#交集
#grep -F -f 3a.dat 3b.dat