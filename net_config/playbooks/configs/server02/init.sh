#!/bin/bash

echo "1 rt2" >> /etc/iproute2/rt_tables
ip route del default via 192.168.200.1
ip route add default via 10.0.12.1 dev eth1