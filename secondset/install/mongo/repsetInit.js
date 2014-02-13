db.runCommand({"replSetInitiate" :
                    {"_id" : "secondset", "members" : [{"_id" : 1, "host" : "172.17.0.8:27017"},
                                                      {"_id" : 2, "host" : "172.17.0.9:27017"},
                                                      {"_id" : 3, "host" : "172.17.0.10:27017"}
             ]}})
