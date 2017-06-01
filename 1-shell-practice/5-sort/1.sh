sort query_log.txt | uniq -c | sort -k 1nr > sort.dat

#对文本排序 | 统计词频 | 对词频的第1个域按照数值进行逆向排序 | 