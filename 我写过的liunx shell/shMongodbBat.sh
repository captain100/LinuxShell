#!/bin/bash
#program 
# this shell is used for backup of mongodb
#history
#2014/09/16 11:25          Qiushi
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
targetpath='/home/muse68'
nowtime=$(date +%Y%m%d%H%M)
start()
{
mongodump -d wedate -o ${targetpath}/${nowtime} 
}
execute()
{
	start
	if [ $? -eq 0 ]
	then
		echo "back successfully"
	else
		echo "back failure!"
	fi
}
if [ ! -d "${targetpath}/${nowtime}/" ]
then
	mkdir  ${targetpath}/${nowtime}
fi
execute
echo "===========back end ${nowtime}==================="
