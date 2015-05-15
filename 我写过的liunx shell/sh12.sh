#!/bin/bash
#program 
# Use loop to try find your input.
#Histroy
#20140916 qiushi
PATH=/bin:/sbin:/usr/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:~bin
export PATH
while [ "$yn" != "yes" ] && [ "$yn" != "YES" ]
do
	read -p "Please inout yes/YES to stop this program: " yn
done
