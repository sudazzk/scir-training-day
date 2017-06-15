# encoding: utf-8
# -*- coding: cp936 -*-

import string


def loaddict():
    filename = raw_input('Enter file name:')
    f = open(filename, 'r')
    DICT = {}
    for eachLine in f:
        dictStr = eachLine.decode('cp936')
    strList = dictStr.split("\t", 2)
    DICT[strList[0]] = strList[1].split("\n", 1)[0]
    global DIC_MAXL
    if DIC_MAXL < len(strList[0]):
        DIC_MAXL = len(strList[0])
    f.close()
    print("max length:")
    print(DIC_MAXL)
    return DICT


def segmentation(dic):
    sentence = unicode(raw_input('请输入中文句子：'), 'cp936')
    print sentence
    length = len(sentence)
    print('length:')
    print length
    global DIC_MAXL
    if (length < DIC_MAXL):
        wlen = length
    else:
        wlen = DIC_MAXL
    testS = sentence

    wordList = []
    while len(testS) > 0:
        word = testS[0:wlen]
        meet = False
        while (not meet) and (len(word) > 0):
            if (dic.has_key(word)):
                wordList.append(word)
                testS = testS[len(word):len(testS)]
                meet = True
            else:
                if (len(word) == 1):
                    wordList.append(word)
                    testS = testS[len(word):len(testS)]
                    meet = True
                else:
                    word = word[0:len(word) - 1]
    return wordList

DIC_MAXL = 0
dictionary = loaddict()
print DIC_MAXL
while (True):
    wordl = segmentation(dictionary)
    for eachChar in wordl:
        print eachChar
