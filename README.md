MongoDB Sharding using Docker
============================

...

Make 3 config servers, 3 first sets, 3 second sets and 3 third sets. After each set is waiting on port 27017 write

    mongo <set.ip>/admin install/mongo/repsetInit.js

to set one of them as PRIMARY and the others as SECONDARY. The data in the repsetInit should be changed to the IP addresses of the correct sets.

After that Make master and write

    mongos --configdb <config_1.ip>:27019,<config_2.ip>:27019,<config_3.ip>:27019

Then, outside of the docker, write

    mongo <master.ip>/admin

Then, you can add the replica sets

    db.runCommand({addShard : "<<first>set>/<set_1.ip>:27017,<set_2.ip>:27017,<set_3.ip>:27017"})

Then you must enable sharding in a database

    db.runCommand({enableSharding : "<database>"})

Finally you must specify a collection and the key

    sh.shardCollection("<database>.<collection>", { _id: 1})

To add one shard to the replicaset

    mongo <PRIMARY-set.ip>/admin

    rs.add("<set.ip>:27017")
