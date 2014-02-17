#!/bin/bash
echo "db.runCommand({"addShard" :"firstset/" " > master/install/mongo/startSharding_firstset.js
echo "db.runCommand({"addShard" :"secondset/" " > master/install/mongo/startSharding_secondset.js
echo "db.runCommand({"addShard" :"thirdset/" " > master/install/mongo/startSharding_thirdset.js
ftf=true
fts=true
ftt=true
while read ips
do
	ip=$(echo $ips | cut -f2 -d=)
	name=$(echo $ips | cut -f1 -d=)
	if [ $name = "mongo:firstset" ]
	then
		if [ $ftf = true ] 
		then
			echo "$ip:27017" >> master/install/mongo/startSharding_firstset.js
			ftf=false
		else
			echo ", $ip:27017" >> master/install/mongo/startSharding_firstset.js
		fi 		
	fi

	if [ $name = "mongo:secondset" ]
        then
                if [ $fts = true ]
                then
                        echo "$ip:27017" >> master/install/mongo/startSharding_secondset.js
                        fts=false
                else
                        echo ", $ip:27017" >> master/install/mongo/startSharding_secondset.js
                fi
        fi

	if [ $name = "mongo:thirdset" ]
        then
                if [ $ftt = true ]
                then
                        echo "$ip:27017" >> master/install/mongo/startSharding_thirdset.js
                        ftt=false
                else
                        echo ", $ip:27017" >> master/install/mongo/startSharding_thirdset.js
                fi
        fi

done < master/install/mongo/ips.txt

echo "})" >> master/install/mongo/startSharding_firstset.js
echo "})" >> master/install/mongo/startSharding_secondset.js
echo "})" >> master/install/mongo/startSharding_thirdset.js

echo "db.runCommand( { enableSharding : "teststorageservice"})" > master/install/mongo/startSharding.js
echo "sh.shardCollection("teststorageservice.messages", "{_id: 1}")" >> master/install/mongo/startSharding.js

