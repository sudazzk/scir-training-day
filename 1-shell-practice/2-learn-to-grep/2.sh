grep -v -c '\.txt' 2.dat
# -v 反检索，只显示不匹配的行
# -c 只打印匹配的行数，不显示匹配的内容


#grep -P "(?=\.txt)" 2.dat
# -P 零宽断言