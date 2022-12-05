#!/bin/bash


###############################################################
#
# This is number of logged in users
# Numbber of cpu cores
# Free Ram memory
# Ip addresss
#
#
###############################################################

####################### VARAIABLES ############################
#logged= This is the current logged in users 
#cores= The cpu cores
#mem= shows free ram memory
#ip= shows ip address
#ip2= shows the begining of ip address

#clearing screen
clear

echo "HELLO $USER"
echo " You are now working on $HOSTNAME"
echo " Here is a number $RANDOM"

#asking the users for his family name
echo " Please provide your family name? "
read fname

echo " your famiy name is $fname"

sleep 1

logged=`last |grep logged |wc -l`
cores=`cat /proc/cpuinfo | grep core |egrep -v 0| sort -u |awk '{print $4}'`
mem=`free -g |grep Mem |awk '{print $4}'`
ip=`ifconfig |grep "inet " |head -1 |awk '{print $2}'`
ip2=`ifconfig |grep "inet " |head -1 |awk '{print $2}' |tr "." " " |awk '{print $1}'`

#current users still logged in
echo "users still logged in: $logged"
sleep 1
#shows the cpu cores
echo "CPU Cores: $cores"
sleep 1
#free ram memory
sleep 1
echo "you have $mem memory"
sleep 1
#shows ip address
echo "your IP address: $ip"

sleep 1

#message is more then or less then amount of users
if [[ "$logged" -gt "3" ]]
then
	echo "system has over 3 users"
else
	echo -e "\e[0;33msystem has less then 3 users\e[0m"
fi

sleep 1

#Message if memory is less then and cores is more then
if [[ "$mem" -lt "10" ]] && [[ "$cores" -gt "2" ]]
then
	echo "Need to add more memory"
fi

sleep 1

#message is ip starts 192 shows what class 
if [[ "$ip2" == "192" ]]
then
	echo -e "\e[0;31mIP Address is Class C Range\e[0m"
fi







#End

