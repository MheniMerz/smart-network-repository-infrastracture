#!/bin/bash

sleep 60

for i in {0..76..4} 
do
	ip link set Ethernet"$i" address 88:88:55:00:05:"$i"
done;

