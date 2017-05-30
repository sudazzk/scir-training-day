#统计空行
#方法1：
#grep -c ^$ 1.dat

#方法2：
grep -Ec "^[[:space:]]*$" 1.dat

#统计非空行
#grep -c ^[^$] 1.dat
# 统计行数也可以用--count