#!/bin/bash


################################################################
#
#
# This script will show the Recieved and transmitted packets.
# Also shows processor performance and any packet errors.
#
#
#
#
#
#
###############################################################




##################### VARIABLES ###############################

clear

#show the cpu performance
CPU=`cat /proc/cpuinfo |grep MHz |sort -u| awk '{print $4}'`
#shows recieved packets
RX=`ifconfig|grep packets |head -2 |grep RX |awk '{print $3}'`
#shows transmitted packtes
TX=`ifconfig|grep packets |head -2 |grep TX |awk '{print $3}'`
#Recived packet errors 
RERR=`ifconfig |grep errors| head -2 |grep RX |awk '{print $3}'`
#TX errors
TERR=`ifconfig| grep errors| head -2 |egrep -v RX |awk '{print $3}'`

#GOOD MORNIGN message
echo "    GOOD MORNING!!!!"
echo " "
sleep 1
#CPU performance
echo "    The processor speed is: $CPU"
echo " "
sleep 1
#Recived packets
echo "    RX packets: $RX"
echo " "
sleep 1
#transmitted packets
echo "    TX packets: $TX"
echo " "
sleep 1
#RX errors
echo "    RX packet errors: $RERR"
sleep 1


#if errors are more the/less then a message to let know 
if [[ "$RERR" -gt "0" ]]
then 
	echo " please check errors"
else
	echo -e "  \e[0;31m You have 0 recived errors\e[0m"
fi

echo " "
sleep 1
#TX errors
echo "    TX packet errors: $TERR"
sleep 1

#if errors are more then/less then message 
if [[ "$TERR" -gt "0" ]]
then
	echo "  Please check errors"
else
	echo -e "  \e[0;31m You have 0 transmitted errors\e[0m"
fi






#END

