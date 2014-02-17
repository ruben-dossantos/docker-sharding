#!/bin/bash
echo "db.runCommand({\"replSetInitiate\" : {\"_id\" : \"thirdset\", \"members\" : [" > master/install/mongo/thirdsetInit.js
id=1
ft=true
while read ips
do
	ip=$(echo $ips | cut -f2 -d=)
	name=$(echo $ips | cut -f1 -d=)
	if [ $name = "mongo:thirdset" ]
	then
		if [ $ft = true ] 
		then
			echo "{\"_id\" : $id, \"host\" : \""$ip:27017"\"}" >> master/install/mongo/thirdsetInit.js
			echo "#!/bin/bash" > master/install/mongo/start_thirdset.sh
			echo "mongo $ip/admin /usr/bin/thirdsetInit.js" >> master/install/mongo/start_thirdset.sh
			ft=false
		else
			echo ", {\"_id\" : $id, \"host\" : \""$ip:27017"\"}" >> master/install/mongo/thirdsetInit.js
		fi 
		id=$(($id+1))
	fi

done < master/install/mongo/ips.txt

echo "]}});" >> master/install/mongo/thirdsetInit.js
