#!/bin/sh

if [ $1 = '1' ]
then
   sudo ovs-ofctl del-flows s1 metadata=0x736c696365310000
   sudo ovs-ofctl del-flows s2 metadata=0x736c696365310000
fi

if [ $1 = '2' ]
then
   sudo ovs-vsctl destroy queue -- --@2q
fi

if [ $1 = '3' ]
then
   sudo ovs-vsctl destroy queue -- --@3q
fi

if [ $1 = '4' ]
then
   sudo ovs-vsctl destroy queue -- --@4q
fi
