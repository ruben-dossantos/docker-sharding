#!/bin/sh
while read ips
do
	ip=$(echo $ips | cut -f2 -d=)
	name=$(echo $ips | cut -f1 -d=)
	if [ $name = "mongo:config_svr" ]
	then
		while ! echo exit | nc $ip 27019; 
		do 
			sleep 1; 
		done
		echo "Connection is possible!"
	fi
done < master/install/mongo/ips.txt;

