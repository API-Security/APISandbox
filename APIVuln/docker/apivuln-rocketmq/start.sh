#!/bin/bash
nohup sh /root/rocketmq-all-4.9.0-bin-release/bin/mqnamesrv & 
nohup sh /root/rocketmq-all-4.9.0-bin-release/bin/mqbroker -n 0.0.0.0:9876 &
while [ 1 ];do curl --connect-timeout 5 http://producer:58080/testAddUser && sleep 3; done
tail -f /dev/null