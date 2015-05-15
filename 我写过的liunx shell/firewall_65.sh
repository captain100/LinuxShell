#!/bin/bash
#program
#this is the shell to set firewall
#history
#2014/09/26     qiushi
IPT="/sbin/iptables"

$IPT -P INPUT DROP    #关闭所有的请求
$IPT -P FORWARD ACCEPT  #开打所有的跳转
$IPT -P OUTPUT ACCEPT   #打开所有的放回端

$IPT -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT #状态模组对已经连线成功的和这个封装包是与我们主机发送出去的封装包予以放行

$IPT -A INPUT -p tcp  --dport 22 -j ACCEPT #打开通过ssh链接服务器的端口
$IPT -A INPUT -p udp  --dport 8080 -j ACCEPT #打开主程序的端口
$IPT -A INPUT -P tcp  -s 1.93.129.66 --dport 5672 -j ACCEPT #打开rabbitMq的端口
$IPT -A INPUT -p tcp  -s 1.93.129.64 --dport 5672 -j ACCEPT

$IPT -A INPUT -p icmp -m icmp --icmp-type 8 -j ACCEPT  #让远端主机不知道我们的存在，也不会接受ping的回应

service iptables save
service iptables restart