#!/bin/sh


if [ -z "$1" ]
then
echo '---------- Creating Slice 2 ----------'
echo 'Switch 1:'
fi

sudo ovs-vsctl set port s1-eth2 qos=@newqos -- \
--id=@newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:2=@2q -- \
--id=@2q create queue other-config:min-rate=1000000 other-config:max-rate=4000000

if [ -z "$1" ]
then
echo 'Switch 3:'
fi
sudo ovs-vsctl set port s3-eth1 qos=@newqos -- \
--id=@newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:2=@2q -- \
--id=@2q create queue other-config:min-rate=1000000 other-config:max-rate=40000000 
if [ -z "$1" ]
then
echo '---------- End Creating Sice ----------'
fi


#mapping s1 queues to hosts (h4,h5 - h9,h10)
sudo ovs-ofctl add-flow s1 ip,priority=65500,nw_src=10.0.0.4,nw_dst=10.0.0.9,idle_timeout=0,actions=set_queue:2,normal
sudo ovs-ofctl add-flow s1 ip,priority=65500,nw_src=10.0.0.4,nw_dst=10.0.0.10,idle_timeout=0,actions=set_queue:2,normal
sudo ovs-ofctl add-flow s1 ip,priority=65500,nw_src=10.0.0.5,nw_dst=10.0.0.9,idle_timeout=0,actions=set_queue:2,normal
sudo ovs-ofctl add-flow s1 ip,priority=65500,nw_src=10.0.0.5,nw_dst=10.0.0.10,idle_timeout=0,actions=set_queue:2,normal
sudo ovs-ofctl add-flow s1 ip,priority=65500,nw_src=10.0.0.5,nw_dst=10.0.0.4,idle_timeout=0,actions=set_queue:2,normal
sudo ovs-ofctl add-flow s1 ip,priority=65500,nw_src=10.0.0.4,nw_dst=10.0.0.5,idle_timeout=0,actions=set_queue:2,normal

#mapping s3 queues to hosts (h9,h10 - h4,h5)
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.9,nw_dst=10.0.0.4,idle_timeout=0,actions=set_queue:2,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.9,nw_dst=10.0.0.5,idle_timeout=0,actions=set_queue:2,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.10,nw_dst=10.0.0.4,idle_timeout=0,actions=set_queue:2,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.10,nw_dst=10.0.0.5,idle_timeout=0,actions=set_queue:2,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.10,nw_dst=10.0.0.9,idle_timeout=0,actions=set_queue:2,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.9,nw_dst=10.0.0.10,idle_timeout=0,actions=set_queue:2,normal

