#grep '\* Total:' 4.dat | awk '{printf("P=%.2f\n", $3)}'

#grep '\* Total:' 4.dat

#grep '\* Total:' 4.dat | sed -E 's/P=(0\.[0-9]*)/pp=\1/'


grep '\* Total:' 4.dat | grep -o '0\.[0-9]*' | 
awk '{
	if(NR % 3 == 1)
		{ printf("P=%.2f ", $1) }
	else if(NR % 3 == 2)
		{ printf("R=%.2f ", $1) }
	else
		{ printf("F=%.2f\n", $1) }
}'
#管道1：提取一整行数据；
#管道2：将一整行数据中的3个小数提取出来；
#管道3：将3个小数以规定格式输出。