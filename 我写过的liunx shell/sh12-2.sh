#!/bin/bash
#program 
# use loop to try find your input.
#histroy
# 20140916    qiushi
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

until [ "$yn" == "yes" ] || [ "$yn" == "YES" ]
do 
	read -p "Pleas input yes/YES to stop this program :" yn
done

