# On_demand_slicing - NetworkingII Activity Project #

## Introduction ##
The goal of this project is to implement a network slicing approach to enable dynamic activation/de-activation of network slices via CLI/GUI commands.

A multi-hop technology is used for this emulation --> there are 11 hosts (h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11) and 3 switches (s1,s2,s3) in the network:

''' text
topology
'''

## Project Description ##
Initially, all hosts can not communicate with each other and no slices are available.
After that, you can decide to activate one, more or all slices by passing an ON command to the ryu controller, and you can deactivate them with an OFF command (see the how to run section).
The available slices are:
	-slice 1
	(foto slice 1)
	-slice 2
	(foto slice 2)
	-slice 3
	(foto slice 3)
	-slice 4
	(foto slice 4)
## How to run: ##
Connect with a comnetsemu portale (recommended) or install all the functionalities in your system.
Open 2 tab.
ryu-manager slicing.py to run the controller
sudo python3 topology.py to emulate the topology with mininet
insert ON and OFF command in the ryu controller tab
	write ON to activate all slices
	write ON n to activate only slice n (with n between 1 and 4)
	write OFF to de-activate all slices
	write OFF n to de-activate only slice n (with n between 1 and 4)
