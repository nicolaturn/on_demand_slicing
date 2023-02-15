#!/bin/sh


echo '---------- Creating Slice 1 ----------'
echo 'Switch 1:'
sudo ovs-vsctl set port s1-eth1 qos=@newqos -- \
--id=@newqos create QoS type?linux-htb \
other-config:max-rate=10000000 \
queues:1=@1q \
--id=@1q create queue other-config:min-rate 1000000 other-config:max-rate=5000000

echo 'Switch2:'
sudo ovs-vsctl set port s2-eth1 qos=@newqos --\
--id=[newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:1=@1q \
--id=@1q create queue other-config:min-rate=1000000 other-config:max-rate=50000000 
echo '---------- End Creating Sices ----------'


#mapping s1 queues to hosts (h1 - h6,h7,h8)
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.1,nw_dst=10.0.0.6,actions=set_queue:1,normal
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.1,nw_dst=10.0.0.7,actions=set_queue:1,normal
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.1,nw_dst=10.0.0.8,actions=set_queue:1,normal
#drop other msgs s1
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.1,nw_dst=10.0.0.2,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.1,nw_dst=10.0.0.3,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.1,nw_dst=10.0.0.4,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.1,nw_dst=10.0.0.5,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.1,nw_dst=10.0.0.9,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.2,nw_dst=10.0.0.2,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.2,nw_dst=10.0.0.3,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.2,nw_dst=10.0.0.4,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.2,nw_dst=10.0.0.5,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.2,nw_dst=10.0.0.9,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.3,nw_dst=10.0.0.2,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.3,nw_dst=10.0.0.3,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.3,nw_dst=10.0.0.4,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.3,nw_dst=10.0.0.5,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.3,nw_dst=10.0.0.9,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.4,nw_dst=10.0.0.2,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.4,nw_dst=10.0.0.3,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.4,nw_dst=10.0.0.4,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.4,nw_dst=10.0.0.5,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.4,nw_dst=10.0.0.9,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.5,nw_dst=10.0.0.2,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.5,nw_dst=10.0.0.3,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.5,nw_dst=10.0.0.4,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.5,nw_dst=10.0.0.5,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.5,nw_dst=10.0.0.9,actions=drop


#mapping s2 queues to hosts (h6,h7,h8 - h1)
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.6,nw_dst=10.0.0.1,actions=set_queue:1,normal
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.6,nw_dst=10.0.0.7,actions=set_queue:1,normal
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.6,nw_dst=10.0.0.8,actions=set_queue:1,normal
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.7,nw_dst=10.0.0.1,actions=set_queue:1,normal
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.7,nw_dst=10.0.0.6,actions=set_queue:1,normal
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.7,nw_dst=10.0.0.8,actions=set_queue:1,normal
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.8,nw_dst=10.0.0.1,actions=set_queue:1,normal
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.8,nw_dst=10.0.0.6,actions=set_queue:1,normal
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.8,nw_dst=10.0.0.7,actions=set_queue:1,normal
#drop other msgs s1
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.6,nw_dst=10.0.0.2,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.6,nw_dst=10.0.0.3,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.6,nw_dst=10.0.0.4,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.6,nw_dst=10.0.0.5,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.6,nw_dst=10.0.0.9,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.7,nw_dst=10.0.0.2,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.7,nw_dst=10.0.0.3,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.7,nw_dst=10.0.0.4,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.7,nw_dst=10.0.0.5,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.7,nw_dst=10.0.0.9,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.8,nw_dst=10.0.0.2,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.8,nw_dst=10.0.0.3,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.8,nw_dst=10.0.0.4,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.8,nw_dst=10.0.0.5,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.8,nw_dst=10.0.0.9,actions=drop

#drop s3
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.9,nw_dst=10.0.0.2,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.9,nw_dst=10.0.0.3,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.9,nw_dst=10.0.0.4,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.9,nw_dst=10.0.0.5,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.9,nw_dst=10.0.0.8,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.9,nw_dst=10.0.0.1,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.9,nw_dst=10.0.0.7,actions=drop
sudo ovs-ofctl add-flow s1 nw_src=10.0.0.9,nw_dst=10.0.0.6,actions=drop























