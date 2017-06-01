# for filename in *.raw
# do 
# 	newname=$(echo $filename | sed 's/.raw//'); 
# 	echo "$newname"
# done

#删除旧的文件
rm dev.gb.conll06 test.gb.conll06 train.gb.conll06

#新建这3个文件
touch dev.gb.conll06.raw test.gb.conll06.raw train.gb.conll06.raw


for filename in *.raw
do 
	newname=$(echo $filename | sed 's/.raw//') 
	mv $filename $newname
done