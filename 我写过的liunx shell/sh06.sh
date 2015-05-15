#!/bin/bash
#program 
# this program will show the user's choice
#histroy
# 2014/09/16 qiushi
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr?local/sbin:~/bin
export PATH
read -p "Please input(Y/N)" yn
if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
	echo "OK,continue"
	exit 0
fi
if [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
	echo "OH,interupt!"
	exit 0
fi
echo "I don't konw what is your choise" && exit 0
