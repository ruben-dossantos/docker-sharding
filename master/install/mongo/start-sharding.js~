db.runCommand({ addShard : "firstset/172.17.0.5:27017,172.17.0.6:27017,172.17.0.7:27017"})
db.runCommand({ addShard : "secondset/172.17.0.8:27017,172.17.0.9:27017,172.17.0.10:27017"})
db.runCommand({ addShard : "thirdset/172.17.0.11:27017,172.17.0.12:27017,172.17.0.13:27017"})
db.runCommand({ enableSharding : "teststorageservice"})
sh.shardCollection("teststorageservice.messages", {_id: 1})

