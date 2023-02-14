#!/bin/sh
# Permitting all hosts to communicate with each other
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.6, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.7, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.8, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.9, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.10, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.11, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.2, actions=output:4
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.3, actions=output:5
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.4, actions=output:6
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.5, actions=output:7

sudo ovs-ofctl add-flow s1 in_port=4,nw_dst=10.0.0.6, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=4,nw_dst=10.0.0.7, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=4,nw_dst=10.0.0.8, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=4,nw_dst=10.0.0.9, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=4,nw_dst=10.0.0.10, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=4,nw_dst=10.0.0.11, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.1, actions=output:3
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.3, actions=output:5
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.4, actions=output:6
sudo ovs-ofctl add-flow s1 in_port=3,nw_dst=10.0.0.5, actions=output:7

sudo ovs-ofctl add-flow s1 in_port=5,nw_dst=10.0.0.6, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=5,nw_dst=10.0.0.7, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=5,nw_dst=10.0.0.8, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=5,nw_dst=10.0.0.9, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=5,nw_dst=10.0.0.10, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=5,nw_dst=10.0.0.11, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=5,nw_dst=10.0.0.1, actions=output:3
sudo ovs-ofctl add-flow s1 in_port=5,nw_dst=10.0.0.2, actions=output:4
sudo ovs-ofctl add-flow s1 in_port=5,nw_dst=10.0.0.4, actions=output:6
sudo ovs-ofctl add-flow s1 in_port=5,nw_dst=10.0.0.5, actions=output:7

sudo ovs-ofctl add-flow s1 in_port=6,nw_dst=10.0.0.6, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=6,nw_dst=10.0.0.7, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=6,nw_dst=10.0.0.8, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=6,nw_dst=10.0.0.9, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=6,nw_dst=10.0.0.10, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=6,nw_dst=10.0.0.11, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=6,nw_dst=10.0.0.1, actions=output:3
sudo ovs-ofctl add-flow s1 in_port=6,nw_dst=10.0.0.2, actions=output:4
sudo ovs-ofctl add-flow s1 in_port=6,nw_dst=10.0.0.3, actions=output:5
sudo ovs-ofctl add-flow s1 in_port=6,nw_dst=10.0.0.5, actions=output:7

sudo ovs-ofctl add-flow s1 in_port=7,nw_dst=10.0.0.6, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=7,nw_dst=10.0.0.7, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=7,nw_dst=10.0.0.8, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=7,nw_dst=10.0.0.9, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=7,nw_dst=10.0.0.10, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=7,nw_dst=10.0.0.11, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=7,nw_dst=10.0.0.1, actions=output:1
sudo ovs-ofctl add-flow s1 in_port=7,nw_dst=10.0.0.2, actions=output:2
sudo ovs-ofctl add-flow s1 in_port=7,nw_dst=10.0.0.3, actions=output:3
sudo ovs-ofctl add-flow s1 in_port=7,nw_dst=10.0.0.4, actions=output:4

sudo ovs-ofctl add-flow s2 in_port=3,nw_dst=10.0.0.1, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=3,nw_dst=10.0.0.2, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=3,nw_dst=10.0.0.3, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=3,nw_dst=10.0.0.4, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=3,nw_dst=10.0.0.5, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=3,nw_dst=10.0.0.6, actions=output:2
sudo ovs-ofctl add-flow s2 in_port=3,nw_dst=10.0.0.7, actions=output:2
sudo ovs-ofctl add-flow s2 in_port=3,nw_dst=10.0.0.8, actions=output:2
sudo ovs-ofctl add-flow s2 in_port=3,nw_dst=10.0.0.10, actions=output:4
sudo ovs-ofctl add-flow s2 in_port=3,nw_dst=10.0.0.11, actions=output:5

sudo ovs-ofctl add-flow s2 in_port=4,nw_dst=10.0.0.1, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=4,nw_dst=10.0.0.2, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=4,nw_dst=10.0.0.3, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=4,nw_dst=10.0.0.4, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=4,nw_dst=10.0.0.5, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=4,nw_dst=10.0.0.6, actions=output:2
sudo ovs-ofctl add-flow s2 in_port=4,nw_dst=10.0.0.7, actions=output:2
sudo ovs-ofctl add-flow s2 in_port=4,nw_dst=10.0.0.8, actions=output:2
sudo ovs-ofctl add-flow s2 in_port=4,nw_dst=10.0.0.9, actions=output:3
sudo ovs-ofctl add-flow s2 in_port=4,nw_dst=10.0.0.11, actions=output:5

sudo ovs-ofctl add-flow s2 in_port=5,nw_dst=10.0.0.1, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=5,nw_dst=10.0.0.2, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=5,nw_dst=10.0.0.3, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=5,nw_dst=10.0.0.4, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=5,nw_dst=10.0.0.5, actions=output:1
sudo ovs-ofctl add-flow s2 in_port=5,nw_dst=10.0.0.6, actions=output:2
sudo ovs-ofctl add-flow s2 in_port=5,nw_dst=10.0.0.7, actions=output:2
sudo ovs-ofctl add-flow s2 in_port=5,nw_dst=10.0.0.8, actions=output:2
sudo ovs-ofctl add-flow s2 in_port=5,nw_dst=10.0.0.9, actions=output:3
sudo ovs-ofctl add-flow s2 in_port=5,nw_dst=10.0.0.10, actions=output:4

sudo ovs-ofctl add-flow s3 in_port=3,nw_dst=10.0.0.1, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=3,nw_dst=10.0.0.2, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=3,nw_dst=10.0.0.3, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=3,nw_dst=10.0.0.4, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=3,nw_dst=10.0.0.5, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=3,nw_dst=10.0.0.7, actions=output:4
sudo ovs-ofctl add-flow s3 in_port=3,nw_dst=10.0.0.8, actions=output:5
sudo ovs-ofctl add-flow s3 in_port=3,nw_dst=10.0.0.9, actions=output:2
sudo ovs-ofctl add-flow s3 in_port=3,nw_dst=10.0.0.10, actions=output:2
sudo ovs-ofctl add-flow s3 in_port=3,nw_dst=10.0.0.11, actions=output:2

sudo ovs-ofctl add-flow s3 in_port=4,nw_dst=10.0.0.1, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=4,nw_dst=10.0.0.2, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=4,nw_dst=10.0.0.3, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=4,nw_dst=10.0.0.4, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=4,nw_dst=10.0.0.5, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=4,nw_dst=10.0.0.6, actions=output:3
sudo ovs-ofctl add-flow s3 in_port=4,nw_dst=10.0.0.8, actions=output:5
sudo ovs-ofctl add-flow s3 in_port=4,nw_dst=10.0.0.9, actions=output:2
sudo ovs-ofctl add-flow s3 in_port=4,nw_dst=10.0.0.10, actions=output:2
sudo ovs-ofctl add-flow s3 in_port=4,nw_dst=10.0.0.11, actions=output:2

sudo ovs-ofctl add-flow s3 in_port=5,nw_dst=10.0.0.1, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=5,nw_dst=10.0.0.2, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=5,nw_dst=10.0.0.3, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=5,nw_dst=10.0.0.4, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=5,nw_dst=10.0.0.5, actions=output:1
sudo ovs-ofctl add-flow s3 in_port=5,nw_dst=10.0.0.6, actions=output:3
sudo ovs-ofctl add-flow s3 in_port=5,nw_dst=10.0.0.7, actions=output:4
sudo ovs-ofctl add-flow s3 in_port=5,nw_dst=10.0.0.9, actions=output:2
sudo ovs-ofctl add-flow s3 in_port=5,nw_dst=10.0.0.10, actions=output:2
sudo ovs-ofctl add-flow s3 in_port=5,nw_dst=10.0.0.11, actions=output:2

sudo ovs-ofctl add-flow s1 in_port=1,nw_dst=10.0.0.1, actions=output:3
sudo ovs-ofctl add-flow s1 in_port=1,nw_dst=10.0.0.2, actions=output:4
sudo ovs-ofctl add-flow s1 in_port=1,nw_dst=10.0.0.3, actions=output:5
sudo ovs-ofctl add-flow s1 in_port=1,nw_dst=10.0.0.4, actions=output:6
sudo ovs-ofctl add-flow s1 in_port=1,nw_dst=10.0.0.5, actions=output:7

sudo ovs-ofctl add-flow s1 in_port=2,nw_dst=10.0.0.1, actions=output:3
sudo ovs-ofctl add-flow s1 in_port=2,nw_dst=10.0.0.2, actions=output:4
sudo ovs-ofctl add-flow s1 in_port=2,nw_dst=10.0.0.3, actions=output:5
sudo ovs-ofctl add-flow s1 in_port=2,nw_dst=10.0.0.4, actions=output:6
sudo ovs-ofctl add-flow s1 in_port=2,nw_dst=10.0.0.5, actions=output:7

sudo ovs-ofctl add-flow s2 in_port=1,nw_dst=10.0.0.6, actions=output:3
sudo ovs-ofctl add-flow s2 in_port=1,nw_dst=10.0.0.7, actions=output:4
sudo ovs-ofctl add-flow s2 in_port=1,nw_dst=10.0.0.8, actions=output:5

sudo ovs-ofctl add-flow s2 in_port=2,nw_dst=10.0.0.6, actions=output:3
sudo ovs-ofctl add-flow s2 in_port=2,nw_dst=10.0.0.7, actions=output:4
sudo ovs-ofctl add-flow s2 in_port=2,nw_dst=10.0.0.8, actions=output:5

sudo ovs-ofctl add-flow s3 in_port=1,nw_dst=10.0.0.9, actions=output:3
sudo ovs-ofctl add-flow s3 in_port=1,nw_dst=10.0.0.10, actions=output:4
sudo ovs-ofctl add-flow s3 in_port=1,nw_dst=10.0.0.11, actions=output:5

sudo ovs-ofctl add-flow s3 in_port=2,nw_dst=10.0.0.9, actions=output:3
sudo ovs-ofctl add-flow s3 in_port=2,nw_dst=10.0.0.10, actions=output:4
sudo ovs-ofctl add-flow s3 in_port=2,nw_dst=10.0.0.11, actions=output:5
