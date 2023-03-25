#!/bin/bash



echo "DISK:"
lsblk |grep disk

echo "PARTITIONS:"
lsblk |grep part

echo "Memory Used:"
free -th |grep Mem: |awk '{print $3}'





echo "MOUNT USAGE:"
df -hBG |grep /dev/s |grep -v tmpfs |awk '{print $1,"\033[33m" $5 "\033[0m"}' |grep /dev/sdb 

df -hBG |grep /dev/s |grep -v tmpfs |awk '{print $1,"\033[34m" $5 "\033[0m"}' |grep /dev/sdc 

df -hBG |grep /dev/s |grep -v tmpfs |awk '{print $1,"\033[31m" $5 "\033[0m"}' |grep /dev/sdd








