#!/bin/bash
#program
#this is the shell to set firewall
#history
#2014/09/23     qiushi
IPT="/sbin/iptables"

$IPT -P INPUT DROP    #关闭所有的请求
$IPT -P FORWARD ACCEPT  #开打所有的跳转
$IPT -P OUTPUT ACCEPT   #打开所有的放回端

$IPT -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT #状态模组对已经连线成功的和这个封装包是与我们主机发送出去的封装包予以放行
$IPT -A INPUT -p tcp  --dport 22 -j ACCEPT #打开通过ssh链接服务器的端口
$IPT -A INPUT -p tcp -s 10.0.0.50,10.0.0.48,10.0.049,10.0.0.53,10.0.0.51 --dport 27017 -j ACCEPT  #打开mongodb 的端口号
$IPT -A INPUT -p icmp -m icmp --icmp-type 8 -j ACCEPT  #让远端主机不知道我们的存在，也不会接受ping的回应


service iptables save
service iptables restart