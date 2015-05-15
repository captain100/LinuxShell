#!/bin/bash
#Program:
# user can keyin filename to touch 3 new files 
#history
#2014/09/15     	Qiushi
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
#1.让使用者输入文件名称，并取得fileuser这个变量；
echi -e "I will use 'touch' command to create 3 file."
read -p "Please input the filename what you want:" fileuser
#2.为了避免使用者随意安Enter， 利用变量功能分析文件名是否有设定？
filename=${fileuser:-"filename"}
#3.开始利用date指令来取得所有的需要的档名了；
date1=`date --date='2 minutes ago' +%Y-%m-%d%H:%M:%S`
date2=`date --date='1 seconds ago' +%Y-%m-%d%H:%M:%S`
date3=`date +%Y-%m-%d%H:%M:%S`
file1="$filename""$date1"
file2="$filename""$date2"
file3="$filename""$date3"
#4.将文档名建立吧
touch $file1
touch $file2
touch $file3

