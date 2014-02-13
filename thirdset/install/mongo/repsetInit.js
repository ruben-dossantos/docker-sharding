db.runCommand({"replSetInitiate" :
                    {"_id" : "thirdset", "members" : [{"_id" : 1, "host" : "172.17.0.13:27017"},
                                                      {"_id" : 2, "host" : "172.17.0.14:27017"},
                                                      {"_id" : 3, "host" : "172.17.0.15:27017"}
             ]}})
