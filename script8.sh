#!/bin/bash

clear

var=100
b=20
d=`date`
t=`hwclock`
ip=`ifconfig |grep "inet " |head -1 |awk '{print $2}'`
j=`ifconfig| grep "inet " |head -1 | awk '{print $2}' |tr "." " " |awk '{print $1}'`
year=`date |awk '{print $6}'`


echo " This is the ip address: $ip "
echo " This is the time: $t "
echo " this is the date: $d "
echo "$b"
echo "$var"

if [[ "$b" -gt "$var" ]] && [[ "$b" -lt "300" ]]
then
	echo "b is greater then var"
else
	echo "b is not greater then var"
fi


if [[ "$b" -gt "$var" ]] || [[ "$b" -lt "300" ]]
then
	echo "b is greater then var"
fi


if [[ "$ip" == "192.168.0.63" ]]
then
	echo "right ip address"
fi


if [[ "$j" == "192" ]]
then
	echo " This is class c"

fi


if [[ "$year" -gt "2000" ]]; then
	echo " its over 2000"
fi




#End
