#!/bin/bash

sleep 60

for i in {0..48..4} 
do
	ip link set Ethernet"$i" address 88:88:13:AF:03:"$i"
done;

