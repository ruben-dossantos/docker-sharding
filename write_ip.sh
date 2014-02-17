#!/bin/bash
ft=true
ow=true
echo "" > master/install/mongo/ips.txt
for CID in $(docker ps -a | awk '{print $1}')
do
	if [ $ft = false ] 
	then
		ip=$(docker inspect $CID | grep IPAddress | cut -d '"' -f 4)
		name=$(docker inspect -format '{{ .Config.Image }}' ${CID})
		if [ $ow = false ]
		then
			echo $name=$ip >> master/install/mongo/ips.txt
		else
			echo $name=$ip > master/install/mongo/ips.txt
			ow=false
		fi
	else
		ft=false
	fi
done
