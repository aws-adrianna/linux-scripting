#!/bin/bash 
#######################################################
#Adrianna
#Ask users for an ip address
#checks if private -if not error ,exit.
#if so ask how many pc?
#Give ip subenet how ever many times 
#
#
#
#######################################################

clear
#ask users for ip address
echo "hello, Please provide an Ip address "

read numip

#edits the numip input of end user to see only first number in ip address
range=`echo "$numip" |tr "." " " |awk '{print $1}'`

#number for loop
a=o

#identifies if range is private and whats next
if [[ "$range" == "10" ]] || [[ "$range" == "172" ]] || [[ "$range" == "192" ]]
   then 
	   echo "How many pc's do you have ?"
	   read pc
   else
	   echo "Error, your IP address is not in a private range"
	   exit

fi


#varaiable to run loop
a=2
pc=$(( $pc + 2 ))

#whiles a loop for how ever many users new-gives a subnet
while [ "$a" -lt "$pc" ]
do 
        new=`echo "$numip" > newip |cat newip |tr "." " " |awk '{print $1,$2,$3}'` 	
	edit=`echo "$new" > ipedit |cat ipedit|tr " " "."`
	echo "$edit.${a}"
	a=$(( $a + 1 ))
done



#END
