#!/usr/bin/env python
# encoding:utf-8
import cPickle as pickle
import sys
reload(sys)   
sys.setdefaultencoding('utf8')

def max_match_segment( line, dic ):
    # write your code here 最大正向匹配算法
    line = line.decode('utf-8')
    result = []
    Maxlen = 5
    Start = 0
    End = len(line)
    while Start < End:
    	wlen = (End-Start)>=Maxlen and Maxlen or End-Start
    	word = line[Start: Start+wlen] # 取子串
    	while True:
    		if word.encode('utf-8') in dic or len(word) == 1:
    			result.append(word)
    			Start += len(word)
    			break
    		else:
    			word = word[0: len(word)-1]
    return result
    

if __name__=="__main__":

    try:
        fpi=open(sys.argv[1], "r")
    except:
        print >> sys.stderr, "failed to open file"
        sys.exit(1)

    try:
        dic = pickle.load(open(sys.argv[2]))
    except:
        print >> sys.stderr, "failed to load dict"
        sys.exit(1)

    for line in fpi:
        print "\t".join( max_match_segment(line.strip(), dic) )

