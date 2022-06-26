#!/bin/bash

ifdown eth1
sleep 1
ifup eth1
echo "1 rt2" >> /etc/iproute2/rt_tables
ip route del default
ip route add default via 10.0.12.1