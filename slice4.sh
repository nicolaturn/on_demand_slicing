#!/bin/sh


echo '---------- Creating Slice 4 ----------'
echo 'Switch 2:'
sudo ovs-vsctl set port s2-eth2 qos=@newqos -- \
--id=@newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:4=@4q -- \
--id=@4q create queue other-config:min-rate=1000000 other-config:max-rate=6000000

echo 'Switch3:'
sudo ovs-vsctl set port s3-eth2 qos=@newqos -- \
--id=@newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:4=@4q -- \
--id=@4q create queue other-config:min-rate=1000000 other-config:max-rate=60000000 
echo '---------- End Creating Sices ----------'

#mapping s2 queues to hosts (h6,h7,h9 - h9,h10,h11)
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.6,nw_dst=10.0.0.9,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.6,nw_dst=10.0.0.10,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.6,nw_dst=10.0.0.11,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.6,nw_dst=10.0.0.7,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.6,nw_dst=10.0.0.8,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.7,nw_dst=10.0.0.9,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.7,nw_dst=10.0.0.10,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.7,nw_dst=10.0.0.11,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.7,nw_dst=10.0.0.6,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.7,nw_dst=10.0.0.8,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.8,nw_dst=10.0.0.9,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.8,nw_dst=10.0.0.10,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.8,nw_dst=10.0.0.11,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.8,nw_dst=10.0.0.7,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.8,nw_dst=10.0.0.6,idle_timeout=0,actions=set_queue:4,normal

#mapping s3 queues to hosts (h9,h10,h11 - h6,h7,h8)
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.9,nw_dst=10.0.0.6,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.9,nw_dst=10.0.0.7,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.9,nw_dst=10.0.0.8,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.9,nw_dst=10.0.0.10,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.9,nw_dst=10.0.0.11,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.10,nw_dst=10.0.0.6,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.10,nw_dst=10.0.0.7,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.10,nw_dst=10.0.0.8,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.10,nw_dst=10.0.0.9,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.10,nw_dst=10.0.0.11,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.11,nw_dst=10.0.0.6,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.11,nw_dst=10.0.0.7,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.11,nw_dst=10.0.0.8,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.11,nw_dst=10.0.0.10,idle_timeout=0,actions=set_queue:4,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.11,nw_dst=10.0.0.9,idle_timeout=0,actions=set_queue:4,normal