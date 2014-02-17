#!/bin/bash
echo "db.runCommand({"replSetInitiate" : {"_id" : "firstset", "members" : [" > master/install/mongo/firstsetInit.js
id=1
ft=true
while read ips
do
	ip=$(echo $ips | cut -f2 -d=)
	name=$(echo $ips | cut -f1 -d=)
	if [ $name = "mongo:firstset" ]
	then
		if [ $ft = true ] 
		then
			echo "{"_id" : $id, "host" : "$ip:27017"}" >> master/install/mongo/firstsetInit.js
			echo "#!/bin/bash" > master/install/mongo/start_firstset.sh
			echo "mongo $ip/admin /usr/bin/firstsetInit.js" >> master/install/mongo/start_firstset.sh 
			ft=false
		else
			echo ", {"_id" : $id, "host" : "$ip:27017"}" >> master/install/mongo/firstsetInit.js
		fi 
		id=$(($id+1))
	fi

done < master/install/mongo/ips.txt

echo "]}});" >> master/install/mongo/firstsetInit.js
