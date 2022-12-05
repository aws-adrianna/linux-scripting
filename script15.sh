#!/bin/bash

########################################################################
#
# command that ask end users what extention they will use
# list the files with the extention
# counts the files with the extention
# the loop will run as many times as the files with the extention
#
#
#
#
#
#######################################################################

clear

rm -f *.txt *.html

#####################Variables########################################
m=1

#asking end users info
echo " Please provide the file extention you would like to create "

read exten
sleep 1
echo "you selected $exten"
sleep 1

echo " how many files would you like to create ?"
read num


#Creates number of files end users put
while [ $m -lt "$num" ]
        do
		touch ${RANDOM}file.${exten} 
                sleep 1
                m=$(( $m + 1 ))
done

list1=`ls -l |ls -l *.${exten} |wc -l`
echo " $list1"
sleep 1

f=0

while [ $f -lt $list1 ]
do
	echo " You have $list1 files"
	f=$(( $f + 1 ))
done




#END
