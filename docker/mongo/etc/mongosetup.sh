#!/bin/bash

mongod --fork --config /etc/mongod.conf --logpath=/var/log/mongodb.log

sleep 1

echo SETUP.sh time now: `date +"%T" `
mongo --host mongo_db:27017 
# <<EOF
#    var cfg = {
#         "_id": "rs0",
#         "version": 1,
#         "members": [
#             {
#                 "_id": 0,
#                 "host": "mongo_db:27017",
#                 "priority": 1
#             }
#         ]
#     };
#     rs.initiate(cfg, { force: true });
#     rs.reconfig(cfg, { force: true });
#     db.getMongo().setReadPref('nearest');
# EOF

mongod --shutdown
mongod --config /etc/mongod.conf