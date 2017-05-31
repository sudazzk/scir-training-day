#生成时间相关文件夹
mkdir tmp_`date +%Y%m%d`,


#生成时间相关文件
touch tmp_`date +%Y%m%d`
#test >> tmp_$(date +%Y%m%d)
#$(date +%Y%m%d)  等价于  `date +%Y%m%d`