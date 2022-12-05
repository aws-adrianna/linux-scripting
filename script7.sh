#!/bin/bash


###########################################################################
#
#Giving users messages
#
#
#
#
#
#
#
##########################################################################

#################### Variables ##########################################

name=`users |awk '{print $1}'`

clear
#send users messages
echo "  Good morning $name"
sleep 1
echo " I hope you are having a wonderful day $name"
sleep 1
echo " you are the best $name"



#end




