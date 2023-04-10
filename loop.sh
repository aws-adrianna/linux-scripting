#!/bin/bash





a=1
b=`ls -l |grep html |awk '{print $9}' |ls -l |grep html |awk '{print $9}' |tail -1 |wc -m`
c=`ls -l |grep html |awk '{print $9}' |ls -l |grep html |awk '{print $9}' |tail -1`
d=2
e=`ls -l |grep html |awk '{print $9}' |ls -l |grep html |awk '{print $9}' |head -1`
f=`ls -l |grep html |awk '{print $9}' |ls -l |grep html |awk '{print $9}' |head -1 |wc -m`

if [[ $a = 1 ]]
then
        echo "$c $b"
	
	if [[ $d = 2 ]]
	then
	echo "$e $f"		
	fi
 
	
fi
		 

	


