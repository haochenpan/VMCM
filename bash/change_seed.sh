#!/usr/bin/env bash

#ips="\"10.142.0.62,10.142.0.63,10.142.15.192,10.142.15.193,10.142.15.194\""
#ips="\"10.142.15.204,10.142.15.205,10.142.15.206,10.142.15.207,10.142.15.208\""
#ips="\"10.142.15.212,10.142.15.213,10.142.15.214,10.142.15.215,10.142.15.216\""
ips="\"10.142.15.199,10.142.15.200,10.142.15.201,10.142.15.202,10.142.15.203\""
#ips="\"10.142.15.223,10.142.15.224,10.142.15.225,10.142.15.226,10.142.15.227\""
/bin/cp -f ~/CCM/setup/cassandra.yaml ~/cassandra/conf
sed -i '429 s/".*"/'"$ips"'/' ~/cassandra/conf/cassandra.yaml
