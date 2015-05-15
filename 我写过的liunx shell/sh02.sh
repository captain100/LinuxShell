#!/bin/bash
#program:
#let user keyin first and last name , and show their full name.
#history:
#2014/09/15     Qiushi 
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:~/bin
export PATH
read -p "Please input your first name:" firstname
read -p "Please input your last name: " lastname
echo -e "\nYour full name is: $firstname $lastname"

