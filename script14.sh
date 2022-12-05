#!/bin/bash


###################################################################
#
#
#	checks how many network cards 
#	if there is more then one will run a mesage
#
#
#
#
#
#
#
########################################################################


clear
################Variables###############################
#NC= How many network cards
#a=1





NC=`ifconfig|grep flags|wc -l`
a=1 

#If network card more then one message will appear 10 times 
if [[ "$NC" -gt "1" ]]
then
	while [ $a -lt 11 ]
	do
		echo -e "                                     \e[0;31m You have more then 1 network card\e[0m"
		sleep 1
		a=$(( $a + 1))
	done
fi


#END
