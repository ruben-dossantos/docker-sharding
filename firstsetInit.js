db.runCommand({replSetInitiate : {_id : firstset, members : [
{_id : 1, host : 172.17.0.4:27017}
, {_id : 2, host : 172.17.0.3:27017}
, {_id : 3, host : 172.17.0.2:27017}
]}});
