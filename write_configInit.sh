#!/bin/bash
echo "#!/bin/bash" > master/install/mongo/start_configdb.sh
echo -n "mongos --configdb " >> master/install/mongo/start_configdb.sh
ft=true
while read ips
do
	ip=$(echo $ips | cut -f2 -d=)
	name=$(echo $ips | cut -f1 -d=)
	if [ $name = "mongo:config_svr" ]
	then
		if [ $ft = true ] 
		then
			echo -n "$ip:27019" >> master/install/mongo/start_configdb.sh
			ft=false
		else
			echo -n ",$ip:27019" >> master/install/mongo/start_configdb.sh
		fi
	fi

done < master/install/mongo/ips.txt
echo -n " &" >> master/install/mongo/start_configdb.sh
echo " " >> master/install/mongo/start_configdb.sh
