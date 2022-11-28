#1/bin/bash


    ###########################################
    # script description
    #date
    #name
    ###################################################
##########################VARIABLES#########################################
a=3
b=10
thedateis=`date`
echo "heklo"
echo "$a"

#Ask the stupid user for his name
echo "please put name:"
read VAR

echo "$VAR"

#Crete a new user with the user name provided in the prvuis echo
useradd -m $VAR
echo "useradd -m $VAR " >> script10.log

#Check IP
ifconfig
echo "ifconfig was run" >> script10.log
sleep 3






#END
