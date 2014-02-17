db.runCommand({"replSetInitiate" : {"_id" : "firstset", "members" : [
{"_id" : 1, "host" : "172.17.0.7:27017"}
, {"_id" : 2, "host" : "172.17.0.6:27017"}
, {"_id" : 3, "host" : "172.17.0.5:27017"}
]}});
