db.runCommand( { enableSharding : "teststorageservice"})
sh.shardCollection("teststorageservice.messages", {_id: 1})
