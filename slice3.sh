#!/bin/sh


echo '---------- Creating Slice 3 ----------'
echo 'Switch 1:'
sudo ovs-vsctl set port s1-eth2 qos=@newqos -- \
--id=@newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:3=@3q -- \
--id=@3q create queue other-config:min-rate=1000000 other-config:max-rate=4000000

sudo ovs-vsctl set port s1-eth1 qos=@newqos -- \
--id=@newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:3=@3q -- \
--id=@3q create queue other-config:min-rate=1000000 other-config:max-rate=4000000

echo 'Switch2:'
sudo ovs-vsctl set port s2-eth1 qos=@newqos -- \
--id=@newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:3=@3q -- \
--id=@3q create queue other-config:min-rate=1000000 other-config:max-rate=40000000 

sudo ovs-vsctl set port s2-eth2 qos=@newqos -- \
--id=@newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:3=@3q -- \
--id=@3q create queue other-config:min-rate=1000000 other-config:max-rate=40000000 

echo 'Switch3:'
sudo ovs-vsctl set port s3-eth1 qos=@newqos -- \
--id=@newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:3=@3q -- \
--id=@3q create queue other-config:min-rate=1000000 other-config:max-rate=40000000 

sudo ovs-vsctl set port s3-eth2 qos=@newqos -- \
--id=@newqos create QoS type=linux-htb \
other-config:max-rate=10000000 \
queues:3=@3q -- \
--id=@3q create queue other-config:min-rate=1000000 other-config:max-rate=40000000 
echo '---------- End Creating Sices ----------'

#mapping s1 queues to hosts (h3 - h11,h8)
sudo ovs-ofctl add-flow s1 ip,priority=65500,nw_src=10.0.0.3,nw_dst=10.0.0.8,idle_timeout=0,actions=set_queue:3,normal
sudo ovs-ofctl add-flow s1 ip,priority=65500,nw_src=10.0.0.3,nw_dst=10.0.0.11,idle_timeout=0,actions=set_queue:3,normal

#mapping s3 queues to hosts (h8 - h3,h11)
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.8,nw_dst=10.0.0.3,idle_timeout=0,actions=set_queue:3,normal
sudo ovs-ofctl add-flow s2 ip,priority=65500,nw_src=10.0.0.8,nw_dst=10.0.0.11,idle_timeout=0,actions=set_queue:3,normal

#mapping s2 queues to hosts (h11 - h3,h8)
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.11,nw_dst=10.0.0.3,idle_timeout=0,actions=set_queue:3,normal
sudo ovs-ofctl add-flow s3 ip,priority=65500,nw_src=10.0.0.11,nw_dst=10.0.0.8,idle_timeout=0,actions=set_queue:3,normal
