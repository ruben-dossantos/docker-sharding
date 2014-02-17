FROM ruben:mongo

# Install start scripts and hosts file
ADD install/bin/start-mongo /usr/bin/
ADD install/mongo/firstsetInit.js /usr/bin/
ADD install/mongo/secondsetInit.js /usr/bin/
ADD install/mongo/thirdsetInit.js /usr/bin/
ADD install/mongo/start_configdb.sh /usr/bin/
ADD install/mongo/start_firstset.sh /usr/bin/
ADD install/mongo/start_secondset.sh /usr/bin/
ADD install/mongo/start_thirdset.sh /usr/bin/
ADD install/mongo/startSharding_firstset.js /usr/bin/
ADD install/mongo/startSharding_secondset.js /usr/bin/
ADD install/mongo/startSharding_thirdset.js /usr/bin/
ADD install/mongo/startSharding.js /usr/bin/
