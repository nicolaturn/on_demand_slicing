#!/bin/sh

if [ $1 = '1' ]
then
   sudo ovs-ofctl del-flows s1 priority=65500
   sudo ovs-ofctl del-flows s2 priority=65500

   sudo ovs-ofctl delete-flows s2 "actions=slice1"
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
