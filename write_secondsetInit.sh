#!/bin/bash
echo "db.runCommand({"replSetInitiate" : {"_id" : "secondset", "members" : [" > master/install/mongo/secondsetInit.js
id=1
ft=true
while read ips
do
	ip=$(echo $ips | cut -f2 -d=)
	name=$(echo $ips | cut -f1 -d=)
	if [ $name = "mongo:secondset" ]
	then
		if [ $ft = true ] 
		then
			echo "{"_id" : $id, "host" : "$ip:27017"}" >> master/install/mongo/secondsetInit.js
			echo "#!/bin/bash" > master/install/mongo/start_secondset.sh
			echo "mongo $ip/admin /usr/bin/secondsetInit.js" >> master/install/mongo/start_secondset.sh
			ft=false
		else
			echo ", {"_id" : $id, "host" : "$ip:27017"}" >> master/install/mongo/secondsetInit.js
		fi 
		id=$(($id+1))
	fi

done < master/install/mongo/ips.txt

echo "]}});" >> master/install/mongo/secondsetInit.js
