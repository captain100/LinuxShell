#!/bin/bash
#program:
# user can input 2 integer to cross by!
#history 
# 2014/09/16    Qiushi 
PATH=/bin:/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e "You SHOULD input 2 number ,I will cross they!\n"
read -p "first number :" firstNum
read -p "second number :" secondNum
total=$(($firstNum*$secondNum))
echo -e "\nThe number $firstNum X $secondNum is ==> $total"
