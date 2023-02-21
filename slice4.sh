#!/bin/sh


if [ -z "$1" ]
then
echo '---------- Creating Slice 4 ----------'
echo 'Switch 2:'
fi
sudo ovs-vsctl set port s2-eth2 qos=@newqos -- \
--id=@newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:4=@4q -- \
--id=@4q create queue other-config:min-rate=1000000 other-config:max-rate=6000000

if [ -z "$1" ]
then
echo 'Switch 3:'
fi
sudo ovs-vsctl set port s3-eth2 qos=@newqos -- \
--id=@newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:4=@4q -- \
--id=@4q create queue other-config:min-rate=1000000 other-config:max-rate=60000000 
if [ -z "$1" ]
then
echo '---------- End Creating Sice ----------'
fi

#mapping s2 queues to hosts (h7 - h11)
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.7,nw_dst=10.0.0.11,idle_timeout=0,actions=set_queue:4,normal

#mapping s3 queues to hosts (h11 - h7)
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.11,nw_dst=10.0.0.7,idle_timeout=0,actions=set_queue:4,normal
